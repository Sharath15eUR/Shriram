
#!/bin/bash

# Command-line arguments and quoting
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <source_directory> <backup_directory> <file_extension>"
    exit 1
fi

SOURCE="$1"
BACKUP="$2"
FILE_EXT="$3"

# Checking and creating the backup directory
if [ ! -d "$BACKUP" ]; then
    mkdir -p "$BACKUP" || { echo "Failed to create backup directory."; exit 1; }
fi

# Globbing and array operations
FILES=("$SOURCE"/*"$FILE_EXT")

# Checking if source directory contains files with the given extension
if [ ! -e "${FILES[0]}" ]; then
    echo "No files with extension '$FILE_EXT' found in '$SOURCE'."
    exit 1
fi

# Initializing backup count
export BACKUP_COUNT=0
TOTAL_SIZE=0

# Displaying the files to be backed up
echo "Files to be backed up:"
for FILE in "${FILES[@]}"; do
    SIZE=$(stat -c%s "$FILE")
    TIMESTAMP=$(date -r "$FILE" "+%Y-%m-%d %H:%M:%S")
    echo "$(basename "$FILE") - $SIZE bytes - Last Modified: $TIMESTAMP"
done

# Backup process
for FILE in "${FILES[@]}"; do
    FILENAME=$(basename "$FILE")
    DESTFILE="$BACKUP/$FILENAME"

    # Overwriting only if source file is newer
    if [ -e "$DESTFILE" ]; then
        if [ "$FILE" -nt "$DESTFILE" ]; then
            cp "$FILE" "$DESTFILE"
        fi
    else
        cp "$FILE" "$DESTFILE"
    fi

    ((BACKUP_COUNT++))
    FILE_SIZE=$(stat -c%s "$FILE")
    TOTAL_SIZE=$((TOTAL_SIZE + FILE_SIZE))
done

# Output report file generation
REPORT="$BACKUP/backupreport.log"
echo "Backup summary:" > "$REPORT"
echo "Total files processed: $BACKUP_COUNT" >> "$REPORT"
echo "Total size of files backed up: $TOTAL_SIZE bytes" >> "$REPORT"
echo "Backup directory: $BACKUP" >> "$REPORT"
echo  >> "$REPORT"

cat "$REPORT"


exit 0
