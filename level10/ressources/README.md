## LEVEL10
  
## NC
`nc -klv 6969`: listen port 6969 with netcat

## Race Conditions & Parallel Processes  
In a bash script, `&` allows two processes to run at the same time.  
command_2 will start executing in the background at the same time as command_1.  
The TOCTOU Exploit, from the access() - open() sequence, occurs when open is not called immediately after access.  
This leaves us a window to manipulate the file between its verification and its opening.  
   
`script.sh`  
  
[Doc Race condition](https://repository.root-me.org/Programmation/C%20-%20C++/EN%20-%20Secure%20Coding%20in%20C%20and%20C++%20Race%20Conditions.pdf)  
  
## GETFLAG TOKEN   
flag10: `woupa2yuojeeaaed06riuj63c`  
token_passwd_level11: `feulo4b72j7edeahuete3no7c`  