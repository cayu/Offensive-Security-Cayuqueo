# OSCP-Scripts
Scripts usados en mi formación OSCP
 ![Mapuche](/Images/wenufoye.png)
## Toma de notas

Al comenzar mi primer laboratorio de OSCP y mi primer intento de examen, lo que hice primero fue leer el manual provisto.
Como punto mas impoartente fue definir una aplicación para toma de notas rápidas. Por recomendación de grupos y fotos utilicé Cherrytree para la toma de notas, con estas plantillas fantásticas :

- https://411hall.github.io/assets/files/CTF_template.ctb
- https://github.com/unmeg/hax/blob/master/BOX-SKELETON.ctb

También estuve realizando modificaciones al script [cherrycon.py](https://github.com/DriftSec/AutoRecon-OSCP/blob/master/cherrycon.py) que viene del proyecto [AutoRecon-OSCP](https://github.com/DriftSec/AutoRecon-OSCP) que me ayudó mucho a documentar.

Al iniciar mi segundo laboratorio para prepararme a dar el nuevo intento de examen y por ver la recomendación en Twitter de [@TJ_Null](https://twitter.com/TJ_Null), decidí comenzar a utilizar [Joplin](https://joplinapp.org/). Al principio no me agradó visualmente la aplicación, pero mas por costumbre que por otra cosa, pero esta muy buena. Además el usuario [@TJ_Null](https://github.com/tjnull/TJ-JPT) publicó una plantilla muy buena en su repositorio, la cual modifiqué para mis necesidades.

- https://github.com/tjnull/TJ-JPT

Este mismo template, nos ayuda para la etapa de reporte y se puede exportar automáticamente a PDF, lo que nos resta un gran trabajo.
Además [Joplin](https://joplinapp.org/) soporta syntaxis [Markdown](https://guides.github.com/features/mastering-markdown/), lo cual es mucho más dinámico y a su vez al mismo tiempo que vamos editando tenemos una vista de impresión.

Para generar las tablas de reconocimiento utilicé [nmap2md](https://github.com/vdjagilev/nmap2md), tomanba la salida full scan de [AutoRecon-OSCP](https://github.com/DriftSec/AutoRecon-OSCP) y copiaba y pegaba.

Para la primer edición de mi OSCP utilicé estas plantillas, que me ayudaron mucho tanto para el LAB como para el examen y me dieron una muy buena orientación de como debería presentar el reporte.

- https://github.com/whoisflynn/OSCP-Exam-Report-Template

## Detalles del examen

Debido a las [restrincciones en el examen](https://support.offensive-security.com/oscp-exam-guide/#exam-restrictions), para esta segunda etapa del OSCP, voy a centrarme a programar mas scrtips y utilizar herramientas manuales.

## Donde busqué info

### Uso del día a día
- https://guide.offsecnewbie.com/kali-configuration/terminator-shortcuts
- https://www.atareao.es/software/utilidades/terminator-un-meta-terminal-ubuntu/
- https://ohmyz.sh/
- https://github.com/saberzaid/SecLists
### Report
- https://github.com/noraj/OSCP-Exam-Report-Template-Markdown
- https://github.com/tjnull/TJ-JPT
### BoF
- Introduction to Exploit Development (Buffer Overflows) - https://www.udemy.com/course/practical-ethical-hacking/
- https://gist.github.com/apolloclark/6cffb33f179cc9162d0a
- https://github.com/gh0x0st/Buffer_Overflow
- https://github.com/justinsteven/dostackbufferoverflowgood
- https://guide.offsecnewbie.com/buffer-overflow
- https://www.udemy.com/course/practical-ethical-hacking/
### PowerShell
- https://github.com/PowerShellMafia/PowerSploit
### Escalamiento
- https://github.com/sagishahar/lpeworkshop
- https://github.com/diego-treitos/linux-smart-enumeration
- https://medium.com/@parvezahmad90/windows-privilege-escalation-insecure-service-registry-to-system-shell-step-by-step-88776c712c17
- https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite
### Reviews
- https://www.netsecfocus.com/oscp/2019/03/29/The_Journey_to_Try_Harder-_TJNulls_Preparation_Guide_for_PWK_OSCP.html
- https://atom.hackstreetboys.ph/hacking-oscp/
- https://hmxsecurity.com/2020/05/25/my-oscp-journey/
- https://medium.com/@wisdomgoody/review-oscp-path-tryhackme-e846c01ce47
- https://github.com/anandkumar11u/OSCP-60days
### LABS ONLINE
#### VULNHUB
- https://www.abatchy.com/2017/02/oscp-like-vulnhub-vms
#### HACKTHEBOX
Mi perfil de usuario : https://www.hackthebox.eu/home/users/profile/90122
#### TRYHACKME
Mi perfil de usuario : https://tryhackme.com/p/cayu
##### Rooms
- https://tryhackme.com/room/thecodcaper
##### Walkthrough
- https://medium.com/@ratiros01/tryhackme-agent-sudo-30bc1c2b1561
- https://medium.com/@wisdomgoody/understanding-how-to-start-hacking-with-tryhackme-kenobi-write-up-cc356c314703
- https://medium.com/@ratiros01/tryhackme-mr-robot-ctf-2a962f34aa29
- https://www.youtube.com/watch?v=2ZZPwwXOH08&feature=em-lsp
#### ATTACHDEFENSE
- https://attackdefense.pentesteracademy.com/
