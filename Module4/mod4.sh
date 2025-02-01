#!/bin/bash

#check if an input file is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"
output_file="output.txt"

#clear the output file before writing new content
> "$output_file"

#Read inputfile line by line
while IFS= read -r line; do
    #Extract key name (before the colon)
    key=$(echo "$line" | awk -F ":" '{print $1}')

    #check if the key matches the required parameters
    if  [[ $key == "\"frame.time\"" || $key == "\"wlan.fc.type\"" || $key == "\"wlan.fc.subtype\"" ]]; then
        echo "$line">> "$output_file"
    fi
done < "$input_file"
echo "Filtered output saved to $output_file"
cat "$output_file"
echo "This is output"