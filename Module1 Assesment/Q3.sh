shriram@shriram-VirtualBox:~$ cd Documents
shriram@shriram-VirtualBox:~/Documents$ mkdir dir1
shriram@shriram-VirtualBox:~/Documents$ cd dir1
shriram@shriram-VirtualBox:~/Documents/dir1$ mkdir dir2
shriram@shriram-VirtualBox:~/Documents/dir1$ cd dir2
shriram@shriram-VirtualBox:~/Documents/dir1/dir2$ touch M1_Q3
shriram@shriram-VirtualBox:~/Documents/dir1/dir2$ ls
M1_Q3
shriram@shriram-VirtualBox:~/Documents/dir1/dir2$ pwd
/home/shriram/Documents/dir1/dir2
shriram@shriram-VirtualBox:~/Documents/dir1/dir2$ ln -s /home/shriram/Documents/dir1/dir2/M1_Q3 /home/shriram/Documents/dir1     
shriram@shriram-VirtualBox:~/Documents/dir1/dir2$ cd Documents
bash: cd: Documents: No such file or directory
shriram@shriram-VirtualBox:~/Documents/dir1/dir2$ cd
shriram@shriram-VirtualBox:~$ cd Documents
shriram@shriram-VirtualBox:~/Documents$ ls
dir1  M1_Q1  M1_Q2
shriram@shriram-VirtualBox:~/Documents$ cd dir1
shriram@shriram-VirtualBox:~/Documents/dir1$ ls
dir2  M1_Q3
shriram@shriram-VirtualBox:~/Documents/dir1$ cd dir2
shriram@shriram-VirtualBox:~/Documents/dir1/dir2$ ls
M1_Q3
shriram@shriram-VirtualBox:~/Documents/dir1/dir2$ 

