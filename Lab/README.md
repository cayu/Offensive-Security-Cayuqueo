# Lab OSCP
Estos son algunos de los scripts que arme para el laboratorio de OSCP, alguno te los piden realizar por las tareas, otros los armé por necesidad.
## Códigos simples
### Ejecutar un comando sobre una lista de direcciones ip :
```shell
awk '{print $1}' < ips_smb.txt | while read ip; do nbtscan -r $ip >> salida_smb.txt ; done
```
#### Obtención de datos por medio de HTTP
### Extraer los links presentes en el HTML de una URL :
```shell
wget -qO- http://google.com/ | grep -Eoi '<a [^>]+>' |  grep -Eo 'href="[^\"]+"' |  grep -Eo '(http|https)://[^/"]+'
wget -qO- https://stackoverflow.com/ | grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*" | sort -u
wget -qO- https://www.google.com | grep -Po '(?<=href=")[^"]*(?=")'
wget -qO- google.com | tr \" \\n | grep https\*://
wget -qO- google.com | sed '/\n/P;//!s|<a[^>]*\(https*://[^/"]*\)|\n\1\n|;D'
```
### Ejemplos de ejecución de CURL
Obtener los encabezados HTTP de una url
```shell
curl -I https://www.google.com
```
Medir el tiempo de ejecución de curl
```shell
curl -w "%{time_total}\n" -o /dev/null -s http://www.google.com
```
Obtener datos por GET
```shell
curl --request GET --url 'http://localhost:8080/get?foo=bar&foz=baz'
```
Enviar datos por POST
```shell
curl --data "param1=test1&param2=test2" http://test.com
```
Enviar datos por PUT
```shell
curl -X PUT -H "Content-Type: multipart/form-data;" -F "key1=val1" "YOUR_URI"
```
Enviando datos por PUST como json
```shell
curl -X PUT -H "Content-Type: application/json" -d '{"key1":"value"}' "YOUR_URI"
```
Enviando un archivo por a POST request:
```shell
curl -X POST "YOUR_URI" -F 'file=@/file-path.csv'
```
Subir una imagen a un formulario, en el campo img_avatar
```shell
curl -F 'img_avatar=@/home/petehouston/hello.txt' http://localhost/upload
```
Download con Powershell al estilo Wget
```powershell
Invoke-WebRequest <URL> -OutFile <ARCHIVO DE SALIDA>
```
Ejemplo de ejecución :
```powershell
Invoke-WebRequest https://raw.githubusercontent.com/M4ximuss/Powerless/master/Powerless.bat -OutFile Powerless.bat

Invoke-WebRequest https://raw.githubusercontent.com/azmatt/windowsEnum/master/windowsEnum.bat -OutFile windowsEnum.bat
```
#### Publicación de datos por medio de HTTP
Servidor HTTP rápido
```
python -m SimpleHTTPServer

python -m http.server
```
