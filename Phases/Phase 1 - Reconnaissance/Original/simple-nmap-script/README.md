Simple Port Scanning Bash Script
================================

Bash script to automate some types of port scans using Nmap. 

It includes some scan profiles to identify common open ports and services, web servers, UDP services, high ports, live hosts, etc., using TCP/SYN/UDP and other port scanning techniques.

## Usage

    simple-nmap-script.sh [-b] -f {source_file} {scan_name} [initials]
    simple-nmap-script.sh [-b] -i {ip_range} {scan_name} [initials]
