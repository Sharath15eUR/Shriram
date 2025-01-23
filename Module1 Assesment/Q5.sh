hriram@shriram-VirtualBox:~/Documents$ mkdir dir1
shriram@shriram-VirtualBox:~/Documents$ cd dir1
shriram@shriram-VirtualBox:~/Documents/dir1$ touch file1
shriram@shriram-VirtualBox:~/Documents/dir1$ touch file2
shriram@shriram-VirtualBox:~/Documents/dir1$ touch file3
shriram@shriram-VirtualBox:~/Documents/dir1$ ls -l 
total 0
-rw-rw-r-- 1 shriram shriram 0 Jan 23 12:27 file1
-rw-rw-r-- 1 shriram shriram 0 Jan 23 12:28 file2
-rw-rw-r-- 1 shriram shriram 0 Jan 23 12:28 file3
shriram@shriram-VirtualBox:~/Documents/dir1$ touch file
shriram@shriram-VirtualBox:~/Documents/dir1$ ls -lt > file
shriram@shriram-VirtualBox:~/Documents/dir1$ cat file
total 0
-rw-rw-r-- 1 shriram shriram 0 Jan 23 12:36 file
-rw-rw-r-- 1 shriram shriram 0 Jan 23 12:28 file3
-rw-rw-r-- 1 shriram shriram 0 Jan 23 12:28 file2
-rw-rw-r-- 1 shriram shriram 0 Jan 23 12:27 file1

