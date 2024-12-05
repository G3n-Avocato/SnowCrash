# SnowCrash  
## notes commands admin  
  
`stat executable_file` = displays detailed file information  
`strings executable` = extracts visible char strings from the file  
`objdump -d executable` = analyzes machine code and symbol table (ghidra)  
`id username` = see UID GID and groups user  
`cat /etc/passwd` = info users in this file   
`ps -u username` = displays the processes belonging to this user  
`groups username` = see access users  
  
`find / -group groupname 2>/dev/null` = list the files belonging to this group or this user  
`find / -user username 2>/dev/null`  
  
`getfacl filename` = ACL permission of files (access control lists)  
`less` = Linux terminal pager  
`ldd exec` = displays dynamic library of an executable
  
  
`find /home/user/level08/ -type f \( ! -name "level08" -a ! -name ".bash_logout"  \`  
    `-a ! -name ".bashrc" -a ! -name ".profile" \) | xargs ./level08`  
  
`xxd file` ou `hexdump -C file` = hexadecimal of a file  
  
`netstat -tuln` ou `ss -tuln` = -t displays TCP connections  
    -u display UDP connections  
    -l listening sockets  
    -n address and port in digital mode  