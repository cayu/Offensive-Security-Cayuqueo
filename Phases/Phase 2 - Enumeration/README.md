# Enumeración
Luego de que pasamos la etapa de __reconocimiento__ y descubrimos que servicios está escuchando el objetivo en cuestión. Debemos utilizar la información obtenida previamente para buscar posibles puntos de ataque.
Deberemos obtener de los datos referentes a dichos servicios por medio de conexiones activas.

## Nmap
Nmap además de ser un scanner de puertos, tiene una gran versatilidad y automatización por medio de su subsistema de scripting, a continuación enumero los principales script a tener en cuenta.

[__http_enum__](https://nmap.org/nsedoc/scripts/http-enum.html)
* nmap -sV --script http-enum <target>
* --script-args http-enum.fingerprintfile=/root/archivo.lua
* --script-args http-enum.basepath=/admin

Se puede generar parametros de obtención de ciertos valores que hagan match con alguna vulnerabilidad no contemplada por medio de __http-enum.fingerprintfile__ hay una nota interesante [optimizing-default-file-enumeration-with-nmap](https://purehacking.com/blog/josh-zlatin/optimizing-default-file-enumeration-with-nmap), donde se puede ver códigos de ejemplo.
Otro argumento interesante es __http-enum.basepath__, que toma la ruta de inicio HTTP desde la cual se debe iniciar el scaneo

[__http-grep__](https://nmap.org/nsedoc/scripts/http-grep.html)
* nmap -n -p80 --script http-grep --script-args http-grep.url="contact.html"<target>

Spiders a website and attempts to match all pages and urls against a given string. Matches are counted and grouped per url under which they were discovered. Features built in patterns like email, ip, ssn, discover, amex and more. The script searches for email and ip by default.

Recomendado, para todos los scripts de HTTP, primero deberemos descubrir que objetivos escuchan en los puertos HTTP cómunes.

* nmap -p 80 -oG - 192.168.0.1 | awk '/80\/open/ {print $2}'


[__ssh-brute__](https://nmap.org/nsedoc/scripts/ssh-brute.html)
* nmap -p 22 --script ssh-brute --script-args userdb=users.lst,passdb=pass.lst --script-args ssh-brute.timeout=4s <target>

[__http-config-backup__](https://nmap.org/nsedoc/scripts/http-config-backup.html)
* nmap --script=http-config-backup <target>

Checks for backups and swap files of common content management system and web server configuration files.

[__smb-enum-users__](https://nmap.org/nsedoc/scripts/smb-enum-users.html)
* nmap --script smb-enum-users.nse -p445 <host>
* sudo nmap -sU -sS --script smb-enum-users.nse -p U:137,T:139 <host>

[__http-wordpress-enum__](https://nmap.org/nsedoc/scripts/http-wordpress-enum.html)
* nmap -sV --script http-wordpress-enum <target>
* nmap --script http-wordpress-enum --script-args check-latest=true,search-limit=10 <target>
* nmap --script http-wordpress-enum --script-args type="themes" <target>

[__firewalk__](https://nmap.org/nsedoc/scripts/firewalk.html)
* nmap --script=firewalk --traceroute <host>
* nmap --script=firewalk --traceroute --script-args=firewalk.max-retries=1 <host>
* nmap --script=firewalk --traceroute --script-args=firewalk.probe-timeout=400ms <host>
* nmap --script=firewalk --traceroute --script-args=firewalk.max-probed-ports=7 <host>

Tries to discover firewall rules using an IP TTL expiration technique known as firewalking.

[__mysql-empty-password__](https://nmap.org/nsedoc/scripts/mysql-empty-password.html)
* nmap -sV --script=mysql-empty-password <target>

[__mysql-users__](https://nmap.org/nsedoc/scripts/mysql-users.html)
* nmap -sV --script=mysql-users <target>

[__mysql-brute__](https://nmap.org/nsedoc/scripts/mysql-brute.html)
* nmap --script=mysql-brute <target>
