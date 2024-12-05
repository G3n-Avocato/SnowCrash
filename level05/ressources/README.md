## LEVEL05  
  
Upon connection, we receive a message stating that we have received an email.  
`cat /var/mail/level05`  
`*/2 * * * * su -c "sh /usr/sbin/openarenaserver" - flag05`  
This line corresponds to a Crontab task and executes a script named `openarenaserver` with the privileges of the user `flag05`.  
  
### CRONTAB  
Crontab is a task scheduler that allows scripts, backups, or other tasks to run at regular intervals.  
The `*` symbols correspond, in order, to minutes, hours, days, months, and days of the week.  
In this case, the script is set to run every 2 minutes.  
  
### OPENARENASERVER SCRIPT  
`cat /usr/sbin/openarenaserver`  
`#!/bin/sh`  
`for i in /opt/openarenaserver/* ; do`  
`	(ulimit -t 5; bash -x "$i")`  
`	rm -f "$i"`  
`done`  
The script goes into the `/opt/openarenaserver` directory and executes each file found there.  
- It limits the execution time to 5 seconds using `ulimit -t 5`.  
- Executes the file in debug mode with `bash -x`.  
- Deletes the file after execution.  
  
### OUR SCRIPT  
In the `/opt/openarenaserver` directory:  
`#!bin/bash`
`getflag > /tmp/flag.txt`
  
## GETFLAG TOKEN   
token_passwd_level06: `viuaaale9huek52boumoomioc`  