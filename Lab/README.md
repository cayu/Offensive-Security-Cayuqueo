# Lab OSCP
Estos son algunos de los scripts que arme para el laboratorio de OSCP
## Códigos simples

Ejecutar nbtscan sobre una lista de direcciones ip :
```shell
awk '{print $1}' < ips_smb.txt | while read ip; do nbtscan -r $ip >> salida_smb.txt ; done
```
