# Script de reconocimiento
## Simple Port Scanning Bash Script

Bash script to automate some types of port scans using Nmap. 

It includes some scan profiles to identify common open ports and services, web servers, UDP services, high ports, live hosts, etc., using TCP/SYN/UDP and other port scanning techniques.

### Usage

    simple-nmap-script.sh [-b] -f {source_file} {scan_name} [initials]
    simple-nmap-script.sh [-b] -i {ip_range} {scan_name} [initials]

## Algunos TIPs para nmap

Listar los puertos abiertos y luego scanear solo esos 
```
ports=$(nmap -p- --min-rate=1000 -T4 <IP> | grep ^[0-9] | cut -d '/' -f
1 | tr '\n' ',' | sed s/,$//)
nmap -p$ports -sC -sV 10.10.10.170
```

---
De [@seguridadyredes](https://twitter.com/seguridadyredes)

https://twitter.com/seguridadyredes/status/1265165758386102277
```
for cai in $(seq 140 150);do sudo nmap -sV -F -v -Pn -n --min-rate 50 192.168.1.$cai -oG - |ag -v 'Status|\#'|sed 's/()/,/;s/Ports://'|sed 's/Ignored.*//' |tr '/' ' '|jq -R -s -c 'split(",")'|sed 's/\\t//g;s/\\n//'| jq -r . | colout 'Host.*' orange reverse ;done
```
https://twitter.com/seguridadyredes/status/1265187963446743040
```
for cai in $(seq 142 150);do sudo nmap -sV -F -v -Pn -n 192.168.1.$cai -oG - |ag -v 'Status|\#' |sed 's/()/,/;s/Ports://' | sed 's/Ignored.*//'|tr '/' ' '| .. |sed 's/"."://'|tr -d '"'|ag -v '{|^}'|sed 's/\\t//'|tr -d '}|,'|sed 's/ /,/10'|sed 's/ /,/8'|sed 's/ /,/7'
```
