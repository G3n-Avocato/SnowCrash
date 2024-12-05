# LEVEL00  
  
## See groups  
To see all groups we have to use the command `getent group`  
Then we check if `flag00` has any files that we can read: `find / -group flag00 2>/dev/null`  
We found two files: `/usr/sbin/john` and `/rofs/usr/sbin/john`  
In both files, when we run the command `cat`, we find the string `cdiiddwpgswtgt`  
  
## Cryptography with DCODE  
`cdiiddwpgswtgt`  
Using DCODE, we discovered that this string is an affine cipher decryption  
In an affine cipher, each letter of the alphabet is assigned a number based on its position: `A = 0`, `B = 1`, etc   
A multiplicative key and an additive key are chosen. Here, they are `1` and `15`  
  
### Example with the first letter of the flag  
`N = 14th letter of the alphabet, so its number is 13`  
`(13 x 1 + 15) = 28`  
`28 % 26 = 2`  
`2 = C`  
  
flag: `nottoohardhere`  
  
token_passwd_level01: `x24ti5gi3x0ol2eh4esiuxias`  