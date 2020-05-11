# Lab OSCP
Estos son algunos de los scripts que arme para el laboratorio de OSCP
## Códigos simples

```shell
awk '{print $1}' < ips_smb.txt | while read ip; do nbtscan -r $ip >> salida_smb.txt ; done
```
