## LEVEL02  
  
### .pcap file  
file in level02: `level02.pcap`  
`.pcap` files contain network packet data.    
  
### scp command  
The `scp` command is a network file transfer protocol that enables easy and secure file transfers between a remote host and a local host, or between two remote sites.  
  
`scp -P 4242 level02@<addr_ip>:/home/user/level02/level02.pcap Documents/`  
`-P 4242`: change the port (default is 22)  
`level02@addr_ip:/path_to_file`: username + IP address of the machine hosting the file + path to the file on the machine  
`Documents/`: destination folder  
  
### Wireshark  
The `.pcap` file extension is primarily associated with Wireshark, a program used for network analysis.  
  
Command to open Wireshark from the terminal: `wireshark level02.pcap`  
In Wireshark,   
right-click on the packets, select `Follow` -> `TCP Stream`, and change the parameter `Show data as` to `Hexdump`.  
Password: in ASCII: `ft_wandr...NDRel.L0L.` in hex: `66 74 5f 77 61 6e 64 72 7f 7f 7f 4e 44 52 65 6c 7f 4c 30 4c 0d`  
  
The hexadecimal corresponding to the ASCII character `.` are actually non-printable characters, where `7f` corresponds to the `DEL` character and `0d` corresponds to `\r`.  
  
Reconstruction of the password using the hexadecimal:  
flag02: `ft_waNDReL0L`  
  
token_passwd_level03: `kooda2puivaav1idi4f57q8iq`  
