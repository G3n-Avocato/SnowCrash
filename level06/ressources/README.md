## LEVEL06  
  
## PHP  
  
The PHP file takes a file as a parameter, opens it, and makes some replacements in its content.  
The first preg_replace function uses the deprecated `/e` modifier, which allows PHP code execution and makes the script vulnerable to injection.  
  
We need to match the pattern expected by the regex `/(\[x (.*)\])/.`  
This regex means that any content starting with `[x ` and ending with `]` will be replaced.  
Regardless of what the `y` function or other preg_replace calls do, this vulnerability is still exploitable.  
  
We create a file containing `[x {${exec(getflag)}}]`  
The `${{}}` syntax forces PHP to execute the code inside it.  
  
We run the binary with our file as input and we get the token.  
  
## GETFLAG TOKEN  
token_passwd_level07: `wiok45aaoguiboiki2tuin6ub`  