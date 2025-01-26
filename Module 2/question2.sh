shriram@shriram-VirtualBox:~$ cd Documents
shriram@shriram-VirtualBox:~/Documents$ cat config.txt
server_name localhost;

database_host localhost;

proxy_pass http://localhost:8080;

api_endpoint https://localhost/api/v1;

log_server localhost;
shriram@shriram-VirtualBox:~/Documents$ touch updated_config.txt
shriram@shriram-VirtualBox:~/Documents$ sed 's/localhost/127.0.0.1/g' config.txt > updated_config.txt
shriram@shriram-VirtualBox:~/Documents$ cat updated_config.txt
server_name 127.0.0.1;

database_host 127.0.0.1;

proxy_pass http://127.0.0.1:8080;

api_endpoint https://127.0.0.1/api/v1;

log_server 127.0.0.1;