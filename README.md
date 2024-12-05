# SnowCrash  
## notes commands admin  
  
`stat executable_file` = affiche info detailler du fichier  
`strings executable` = extrait les chaines a characteres visibles du fichier  
`objdump -d executable` = analyse le code machine et la table des symboles (ghidra)  
`id username` = voir UID GID et groupes d'un user  
`cat /etc/passwd` = infos des users dans ce fichier  
`ps -u username` = affiche les processus appartenant a cette user  
`groups username` = voir acces user  
  
`find / -group groupname 2>/dev/null` = lister les fichiers appatenant a ce groupe ou ce user   
`find / -user username 2>/dev/null`  
  
`getfacl filename` = permission ACL des fichiers (access control lists)  
`less` = pageur  
`ldd exec` = affiche bibliotheque dynamique d un exec  
  
  
`find /home/user/level08/ -type f \( ! -name "level08" -a ! -name ".bash_logout"  \`  
    `-a ! -name ".bashrc" -a ! -name ".profile" \) | xargs ./level08`  
  
`xxd file` ou `hexdump -C file` = hexadecimal d'un fichier  
  
`netstat -tuln` ou `ss -tuln` = -t affiche connexions TCP  
    -u affiche les commexions UDP  
    -l sockets en ecoute  
    -n address et port en mode numerique  