shriram@shriram-VirtualBox:~$ cd Documents
shriram@shriram-VirtualBox:~/Documents$ ls
M1_Q1
shriram@shriram-VirtualBox:~/Documents$ touch M1_Q2
shriram@shriram-VirtualBox:~/Documents$ ls
M1_Q1  M1_Q2
shriram@shriram-VirtualBox:~/Documents$ ls -l
total 0
---x--x--x 1 shriram shriram 0 Jan 23 08:11 M1_Q1
-rw-rw-r-- 1 shriram shriram 0 Jan 23 08:46 M1_Q2
shriram@shriram-VirtualBox:~/Documents$ chmod g-w M2_Q2
chmod: cannot access 'M2_Q2': No such file or directory
shriram@shriram-VirtualBox:~/Documents$ chmod g-w M1_Q2
shriram@shriram-VirtualBox:~/Documents$ ls -l
total 0
---x--x--x 1 shriram shriram 0 Jan 23 08:11 M1_Q1
-rw-r--r-- 1 shriram shriram 0 Jan 23 08:46 M1_Q2

