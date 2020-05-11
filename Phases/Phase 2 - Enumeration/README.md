# Enumeración
Luego de que pasamos la etapa de __reconocimiento__ y descubrimos que servicios está escuchando el objetivo en cuestión. Debemos utilizar la información obtenida previamente para buscar posibles puntos de ataque.
Deberemos obtener de los datos referentes a dichos servicios por medio de conexiones activas.

## Nmap
Nmap además de ser un scanner de puertos, tiene una gran versatilidad y automatización por medio de su subsistema de scripting, a continuación enumero los principales script a tener en cuenta :

[__http_enum__](https://nmap.org/nsedoc/scripts/http-enum.html)
* nmap -sV --script=http-enum <target>
* --script-args http-enum.fingerprintfile=/root/archivo.lua
* --script-args http-enum.basepath=/admin

Se puede generar parametros de obtención de ciertos valores que hagan match con alguna vulnerabilidad no contemplada por medio de __http-enum.fingerprintfile__ hay una nota interesante [optimizing-default-file-enumeration-with-nmap](https://purehacking.com/blog/josh-zlatin/optimizing-default-file-enumeration-with-nmap), donde se puede ver códigos de ejemplo.
Otro argumento interesante es __http-enum.basepath__, que toma la ruta de inicio HTTP desde la cual se debe iniciar el scaneo



