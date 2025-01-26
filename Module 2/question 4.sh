shriram@shriram-VirtualBox:~$ ps -eo pid,comm,%mem --sort=-%mem | head -n 2 | tail -n 1

   8322 Isolated Web Co  3.7

shriram@shriram-VirtualBox:~$ kill -9 8322