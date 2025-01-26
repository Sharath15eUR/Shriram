shriram@shriram-VirtualBox:~/Downloads$ ls -lh
total 5.0M
-rwxrwxrwx 1 shriram shriram    0 Jan 26 20:45  largefiles.txt
-rw-rw-r-- 1 shriram shriram 930K Jan 26 20:28 'Unit1 Hazards.pdf'
-rw-rw-r-- 1 shriram shriram 1.9M Jan 26 20:28 'Unit2 Elecrical handtools and Equioment.pdf'
-rw-rw-r-- 1 shriram shriram 2.3M Jan 26 20:28 'Unit2 Electrical installations.pdf'
shriram@shriram-VirtualBox:~/Downloads$ ls -lh |awk '$5 ~/^[0-9]+(\.[0-9]+)?M$/ {print $9}' >largefiles.txt
shriram@shriram-VirtualBox:~/Downloads$ cat largefiles.txt
Unit2
Unit2
shriram@shriram-VirtualBox:~/Downloads$