## LEVEL01  
  
`cat /etc/passwd`  
Find `42hDRfypTqqnw` for flag01 instead of `x`  

## Hashcat  
`hashcat -m 1500 -a 0 -o rendu.txt hash.txt ignis-1M.txt`  
  
`-m 1500`: corresponds to the mode, it is the ID of DEScrypt in hashcat  
DEScrypt is an old password hashing algorithm, used in UNIX systems to store passwords.  
`-a 0`: means the attack will be brute force with a dictionary  
`-o rendu.txt`: file for hashcat output  
`hash.txt`: file with the hash to decode  
`ignis-1M.txt`: password dictionary for testing  
  
In rendu.txt we have: `42hDRfypTqqnw:abcdefg`  
  
flag01: `abcdefg`  
   
token_passwd_level02: `f2av5il02puano7naaf6adaaf`  