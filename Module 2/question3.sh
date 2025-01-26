shriram@shriram-VirtualBox:~$ cd Documents
shriram@shriram-VirtualBox:~/Documents$ touch log.txt
shriram@shriram-VirtualBox:~/Documents$ cat log.txt
DEBUG: Starting the application initialization.
ERROR: Unable to connect to the database.
INFO: User 'admin' logged in successfully.
DEBUG: Fetching configuration settings from the server.
ERROR: DEBUG - Configuration settings could not be applied.
INFO: Scheduled job 'backup' completed successfully.
DEBUG: Connection to server timed out. Retrying...
ERROR: Failed to fetch data from API endpoint '/users'.
INFO: Maintenance mode activated.
ERROR: DEBUG - Query execution failed due to a syntax error.
DEBUG: Reloading application modules.
ERROR: Missing required parameter in the request.
INFO: Shutting down the system gracefully.
DEBUG: Closing unused network connections.
ERROR: DEBUG - Unexpected server response received.
shriram@shriram-VirtualBox:~/Documents$ touch filtered_log.txt
shriram@shriram-VirtualBox:~/Documents$ grep -h "ERROR" log.txt|grep -v "DEBUG" >filtered_log.txt
shriram@shriram-VirtualBox:~/Documents$ cat filtered_log.txt
ERROR: Unable to connect to the database.
ERROR: Failed to fetch data from API endpoint '/users'.
ERROR: Missing required parameter in the request.