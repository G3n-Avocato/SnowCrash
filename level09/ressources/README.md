## LEVEL09  
  
There is a file `token`, wich contains the string `f4kmm6p|=?p?n??DB?Du{???`  
Also a binary file, we download it `scp -P 4242 level09@<ip>:/home/user/level09/level09 Documents/`  
  
## BINARY NINJA  
The program transforms a string by modifying its characters.  
It reads each character of the input and adds its index position to the character’s ASCII value.  
For example, for the second character in a string (index 1), if the character is `3`, it becomes `4` (ASCII value incremented by 1). 
  
## TOKEN FILE  
We can use the command `hexdump -C token` to view the hexadecimal content of the file.  
`66, 34, 6b, 6d, 6d, 36, 70, 7c, 3d, 82, 7f, 70, 82, 6e, 83, 82, 44, 42, 83, 44, 75, 7b, 7f, 8c, 89`  
For each hexadecimal value, convert it to its decimal value, then subtract its index positions to find the character.  
This gives us the flag `f3iji1ju5yuevaus41q1afiuq`.    
  
## GETFLAG TOKEN   
flag09: `f3iji1ju5yuevaus41q1afiuq`  
token_passwd_level10: `s5cAJpM8ev6XHw998pRWG728z`  