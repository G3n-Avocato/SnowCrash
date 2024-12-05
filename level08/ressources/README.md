## LEVEL08  
  
We download the binary file `scp -P 4242 level08@<ip>:/home/user/level08/level08 Documents/`  
With this binary, there is a file `token`, that we can't read.  
  
## GHIDRA  
The binary reads a file and prints its content. There is a check to prevent access to files whose name contains the word `token`  
`pcVar1 = strstr((char *)in_stack_00000008[1],"token");`  
This line uses `strstr` to search `token`  
  
## SYMBOLIC LINK  
We bypass the strstr check by creating a symbolic link.  
The binary reads the `token` file indirectly without detecting its name.  
`ln -s /home/user/level08/token /tmp/saucisse`  
A symbolic link is a file that references another file or directory, acting as a shortcut to its target.  
  
Run the binary with the symbolic link as an argument:  
`./level08 /tmp/saucisse`  
This prints the flag.    
  
## GETFLAG TOKEN   
flag08: `quif5eloekouj29ke0vouxean`  
token_passwd_level09: `25749xKZ8L7DkSCwJkT9dyv6f`  