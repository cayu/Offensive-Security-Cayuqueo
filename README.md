# OSCP-Scripts
<img src="Images/wenufoye.png" style="float: left; margin-right: 10px;" />
Scripts usados en mi formación OSCP

[![Twitter Badge](https://img.shields.io/badge/-@cayu-1ca0f1?style=flat-square&labelColor=1ca0f1&logo=twitter&logoColor=white&link=https://twitter.com/cayu)](https://twitter.com/cayu) [![Linkedin Badge](https://img.shields.io/badge/-sergiocayuqueo-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/sergiocayuqueo/)](https://www.linkedin.com/in/sergiocayuqueo/) [![Gmail Badge](https://img.shields.io/badge/-cayu@cayu.com.ar-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:cayu@cayu.com.ar)](mailto:cayu@cayu.com.ar)

Voy a ir marcando los challenges :x: :heavy_check_mark: a medida los vaya realizando.

---

## Recursos Oficiales

- Offensive Security Community portal
- Offensive Security Forums
- [Offensive Security Rainbow Cracker](https://cracker.offensive-security.com/)
- [METASPLOIT UNLEASHED – FREE ETHICAL HACKING COURSE](https://www.offensive-security.com/metasploit-unleashed/)

## Toma de notas

Al comenzar mi primer laboratorio de OSCP y mi primer intento de examen, lo que hice primero fue leer el manual provisto.
Como punto mas impoartente fue definir una aplicación para toma de notas rápidas. Por recomendación de grupos y fotos utilicé Cherrytree para la toma de notas, con estas plantillas fantásticas :

- https://411hall.github.io/assets/files/CTF_template.ctb
- https://github.com/unmeg/hax/blob/master/BOX-SKELETON.ctb

También estuve realizando modificaciones al script [cherrycon.py](https://github.com/DriftSec/AutoRecon-OSCP/blob/master/cherrycon.py) que viene del proyecto [AutoRecon-OSCP](https://github.com/DriftSec/AutoRecon-OSCP) que me ayudó mucho a documentar.

Para la primer edición de mi OSCP utilicé estas plantillas, que me ayudaron mucho tanto para el LAB como para el examen y me dieron una muy buena orientación de como debería presentar el reporte.

- https://github.com/whoisflynn/OSCP-Exam-Report-Template

Al iniciar mi segundo laboratorio para prepararme a dar el nuevo intento de examen y por ver la recomendación en Twitter de [@TJ_Null](https://twitter.com/TJ_Null), decidí comenzar a utilizar [Joplin](https://joplinapp.org/). Al principio no me agradó visualmente la aplicación, pero mas por costumbre que por otra cosa, pero esta muy buena. Además el usuario [@TJ_Null](https://github.com/tjnull/TJ-JPT) publicó una plantilla muy buena en su repositorio, la cual modifiqué para mis necesidades.

- https://github.com/tjnull/TJ-JPT

Este mismo template, nos ayuda para la etapa de reporte y se puede exportar automáticamente a PDF, lo que nos resta un gran trabajo.
Además [Joplin](https://joplinapp.org/) soporta syntaxis [Markdown](https://guides.github.com/features/mastering-markdown/), lo cual es mucho más dinámico y a su vez al mismo tiempo que vamos editando tenemos una vista de impresión.

Para generar las tablas de reconocimiento utilicé [nmap2md](https://github.com/vdjagilev/nmap2md), tomanba la salida full scan de [AutoRecon-OSCP](https://github.com/DriftSec/AutoRecon-OSCP) y copiaba y pegaba.


## Detalles del examen

Debido a las [restrincciones en el examen](https://support.offensive-security.com/oscp-exam-guide/#exam-restrictions), para esta segunda etapa del OSCP, voy a centrarme a programar mas scripts y utilizar herramientas manuales.

## Donde busqué info

### Uso del día a día
- https://guide.offsecnewbie.com/kali-configuration/terminator-shortcuts
- https://www.atareao.es/software/utilidades/terminator-un-meta-terminal-ubuntu/
- https://ohmyz.sh/
- https://github.com/saberzaid/SecLists
### Report
- [OSCP Exam Report Template in Markdown](https://github.com/noraj/OSCP-Exam-Report-Template-Markdown) - No esta actualizado a la edición 2020
- [Project TJ-JPT](https://github.com/tjnull/TJ-JPT) - Es el template mas oficial por decirle de alguna forma
- [OSCP Report Templates](https://github.com/whoisflynn/OSCP-Exam-Report-Template) - Muy bueno, en formato Word, si no te das maña con un gestor de notas va
### Aplicaciones Web
- [Local File Inclusion](https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/File%20Inclusion)
### BoF
- [UDEMY : Introduction to Exploit Development (Buffer Overflows)](https://www.udemy.com/course/practical-ethical-hacking)
- [UDEMY : Ethical Hacking, Penetration Testing: Buffer Overflow](https://www.udemy.com/course/ethical-hacking-penetration-testing-buffer-overflow-enbd)
- [UDEMY : Immunity Debugger for Exploit Devs - YCSC Lab Essentials](https://www.udemy.com/course/immunity-debugger-yaksas-csc-lab-essentials)
- [Buffer Overflow Tutorial](https://gist.github.com/apolloclark/6cffb33f179cc9162d0a)
- [Don't let buffer overflows overflow your mind](https://github.com/gh0x0st/Buffer_Overflow)
- [do stack bufferoverflow good](https://github.com/justinsteven/dostackbufferoverflowgood)
- [Rowbot's PenTest Notes - Buffer Overflow](https://guide.offsecnewbie.com/buffer-overflow)
- [Buffer Overflow en Windows 32 bits - Desarrollo de un exploit con MiniShare 1.4.1](https://www.youtube.com/watch?v=PQJn4s4E8Os)
- [Desarrollo de Exploits](https://www.youtube.com/playlist?list=PLuW212y8VcR0IuQZdFwfrZJXgMA8sF7Qn)
- [HackemCON: Hacking con Buffer Overflow (OSCP Style)](https://www.youtube.com/watch?v=gV1V7qwf2Xg)
- [Buffer Overflow attack](https://medium.com/@dericksiby94/buffer-overflow-attack-c8f4ad1b04b0) | https://github.com/Derick8/bufferoverflow_attack
- [The Cyber Mentor - Buffer Overflows Made Easy](https://www.youtube.com/watch?v=qSnPayW6F7U&list=PLLKT__MCUeix3O0DPbmuaRuR_4Hxo4m3G)
- [The Basics of Exploit Development 1: Win32 Buffer Overflows](https://www.coalfire.com/The-Coalfire-Blog/January-2020/The-Basics-of-Exploit-Development-1)
- [Buffer Overflows para Iniciantes](https://raw.githubusercontent.com/m0nad/Papers/master/buffer_overflow_iniciantes.txt)
- [Ekoparty #UniTalks Perú | Erick Olortegui: Init 1 - Buffer Overflow](https://www.youtube.com/watch?v=CiixUdI7KTI)
- Julio Ureña Stach Buffer Overflow - https://www.youtube.com/watch?v=7KZ5LCFr6Sw | https://www.youtube.com/watch?v=eajvZQNoUq0
- [s4vitar - ¿Cómo explotar el Buffer Overflow del OSCP con éxito?](https://www.youtube.com/watch?v=sdZ8aE7yxMk)
- https://www.tenouk.com/Bufferoverflowc/Bufferoverflow1.html
- https://www.corelan.be/index.php/2009/07/19/exploit-writing-tutorial-part-1-stack-based-overflows/
- https://medium.com/@pswalia2u/r-3-4-4-buffer-overflow-vanilla-eip-overwrite-c205c2d3b1f7
- https://github.com/Tib3rius/Pentest-Cheatsheets/blob/master/exploits/buffer-overflows.rst
- [OSCP Buffer Overflow Cheat Sheet](https://github.com/V1n1v131r4/OSCP-Buffer-Overflow)
- [Writing Exploits for Win32 Systems from Scratch](https://www.nccgroup.com/uk/about-us/newsroom-and-events/blogs/2016/june/writing-exploits-for-win32-systems-from-scratch/)
- [Writing a Simple Buffer Overflow Exploit](https://www.youtube.com/watch?v=oS2O75H57qU) | https://gist.github.com/LiveOverflow/5fa36bec51968de696b11d3548b02148
- [Hacker Course Buffer Overflow - A Practical Example (with Exploit)](https://www.youtube.com/watch?v=aEZKGW_VTd4)
- [Buffer Overflow Guide](https://github.com/johnjhacking/Buffer-Overflow-Guide)
#### Vulnserver
- [Vulnserver](https://samsclass.info/127/proj/vuln-server.htm)
- [Step-By-Step VulnServer buffer overflow](https://www.youtube.com/watch?v=22XxOFa_HI8)
- [Vulnserver Exploiting GMON with SEH Overwrite](https://anubissec.github.io/Vulnserver-Exploiting-GMON-SEH-Overwrite)
- [Walkthrough: SEH-Based Stack Overflow Exploit on Windows Server 2008](https://www.youtube.com/watch?v=UVtXaDtIQpg)
- [Vulnserver GMON Command Walkthrough](https://www.youtube.com/watch?v=8QrfzQOWYx8)
- [Vulnserver TRUN Command Walkthrough](https://www.youtube.com/watch?v=mNoTdCdAHjw)
- [Video 3 - Exploit Remoto - vulnserver](https://www.youtube.com/watch?v=AP-vk3Q9HCY)
- [Vulnserver Buffer Overflow Exploit Development with Kali Linux](https://www.youtube.com/watch?v=qjWs___hQcE)
- [VULNSERVER Exploit: HTER w/ Assembly & Shellcode](https://www.youtube.com/watch?v=o-1qYzAqM_Q)
- [SmashTheTux VulnHub Writeup](https://g0blin.co.uk/smashthetux-vulnhub-writeup/)
- [Exploiting "Vulnerable Server" for Windows 7](https://samsclass.info/127/proj/vuln-server.htm)
#### Aplicaciones conocidas
- [Minishare 1.4.1](https://www.exploit-db.com/exploits/636)
- [Savant Web Server 3.1](https://www.exploit-db.com/exploits/10434)
- [Freefloat FTP Server 1.0](https://www.exploit-db.com/exploits/40673)
- [Core FTP Server 1.2](https://www.exploit-db.com/exploits/39480)
### PowerShell
- https://github.com/PowerShellMafia/PowerSploit
- https://www.offensive-security.com/offsec/kali-linux-powershell-pentesting/
### Escalamiento
- [Windows / Linux Local Privilege Escalation Workshop](https://github.com/sagishahar/lpeworkshop)
- [PEASS - Privilege Escalation Awesome Scripts SUITE](https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite)
- [Windows - Privilege Escalation](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Windows%20-%20Privilege%20Escalation.md)
#### Linux
- https://github.com/diego-treitos/linux-smart-enumeration
- https://payatu.com/guide-linux-privilege-escalation
- https://blog.g0tmi1k.com/2011/08/basic-linux-privilege-escalation/
#### Windows
- https://medium.com/@parvezahmad90/windows-privilege-escalation-insecure-service-registry-to-system-shell-step-by-step-88776c712c17
### Reviews y notas
- https://www.netsecfocus.com/oscp/2019/03/29/The_Journey_to_Try_Harder-_TJNulls_Preparation_Guide_for_PWK_OSCP.html
- https://atom.hackstreetboys.ph/hacking-oscp/
- https://hmxsecurity.com/2020/05/25/my-oscp-journey/
- https://medium.com/@wisdomgoody/review-oscp-path-tryhackme-e846c01ce47
- https://github.com/anandkumar11u/OSCP-60days
- https://oscp.infosecsanyam.in/
- [Hack The Box OSCP Preparation](https://rana-khalil.gitbook.io/hack-the-box-oscp-preparation/)
- http://sejalivre.org/OSCP/index.html
- [OSCP - Personal Notes](https://hackanythingfor.blogspot.com/2020/08/oscp-personal-notes.html)
- [Preparación para el OSCP (by s4vitar)](https://gist.github.com/s4vitar/b88fefd5d9fbbdcc5f30729f7e06826e)
### LABS ONLINE
#### VULNHUB
- https://www.abatchy.com/2017/02/oscp-like-vulnhub-vms
##### Machines
- [Kioptrix: Level 1 (#1)](https://www.vulnhub.com/entry/kioptrix-level-1-1,22/)
- [Kioptrix: Level 1.1 (#2)](https://www.vulnhub.com/entry/kioptrix-level-11-2,23/)
- [Kioptrix: Level 1.2 (#3)](https://www.vulnhub.com/entry/kioptrix-level-12-3,24/)
- [Kioptrix: Level 1.3 (#4)](https://www.vulnhub.com/entry/kioptrix-level-13-4,25/)
- [Panabee: 1](https://www.vulnhub.com/entry/panabee-1,502/)
- [FristiLeaks: 1.3](https://www.vulnhub.com/entry/fristileaks-13,133/)
- [Stapler: 1](https://www.vulnhub.com/entry/stapler-1,150/)
- [PwnLab: init](https://www.vulnhub.com/entry/pwnlab-init,158/)
- [Kioptrix: 2014](https://www.vulnhub.com/entry/kioptrix-2014-5,62/)
- [Brainpan: 1](https://www.vulnhub.com/entry/brainpan-1,51/)
- [Brainpan: 2](https://www.vulnhub.com/entry/brainpan-2,56/)
- [Brainpan: 3](https://www.vulnhub.com/entry/brainpan-3,121/)
- [Mr-Robot: 1](https://www.vulnhub.com/entry/mr-robot-1,151/)
- [HackLAB: Vulnix](https://www.vulnhub.com/entry/hacklab-vulnix,48/)
- [RickdiculouslyEasy: 1](https://www.vulnhub.com/entry/rickdiculouslyeasy-1,207/)
- [VulnOS: 2](https://www.vulnhub.com/entry/vulnos-2,147/)
- [/dev/random: k2](https://www.vulnhub.com/entry/devrandom-k2,204/)
- [/dev/random: Pipe](https://www.vulnhub.com/entry/devrandom-pipe,124/)
- [/dev/random: relativity (v1.0.1)](https://www.vulnhub.com/entry/devrandom-relativity-v101,55/)
- [/dev/random: scream](https://www.vulnhub.com/entry/devrandom-scream,47/)
- [/dev/random: Sleepy](https://www.vulnhub.com/entry/devrandom-sleepy,123/)
- [Bobby: 1](https://www.vulnhub.com/entry/bobby-1,42/)
- [IMF: 1](https://www.vulnhub.com/entry/imf-1,162/)
- [Exploit-Exercises: Protostar (v2)](https://www.vulnhub.com/entry/exploit-exercises-protostar-v2,32/)
- [SmashTheTux: 1.0.1](https://www.vulnhub.com/entry/smashthetux-101,138/)
- [Hackxor: 1](https://www.vulnhub.com/entry/hackxor-1,19/)
- [Glasgow Smile: 1.1](https://www.vulnhub.com/entry/glasgow-smile-11,491/)
- [Pinky's Palace: v1](https://www.vulnhub.com/entry/pinkys-palace-v1,225/)
- [LazySysAdmin: 1](https://www.vulnhub.com/entry/lazysysadmin-1,205/):heavy_check_mark:
##### Walkthrough
- [Kioptrix Level 1 CTF Walkthrough - Boot-To-Root](https://www.youtube.com/watch?v=Qn2cKYZ6kBI)
- [VulnHub RickdiculouslyEasy 1 Write-Up (OSCP)](https://www.youtube.com/watch?v=fbg9Jr_llxY&feature=youtu.be)
- [VulnHub Golden Eye -1 Write-up (OSCP)](https://www.youtube.com/watch?v=IzbseDtSYjQ)
- [Vulnhub NullByte:1 Write-up (OSCP)](https://www.youtube.com/watch?v=IzbseDtSYjQ)
- [Vulnhub Bob Write-up (OSCP)](https://www.youtube.com/watch?v=9Vz38znh2s0)
- [Vulnhub Toppo-1 Write-up (OSCP)](https://www.youtube.com/watch?v=8uhJBvDru0s)
- [VulnHub Weakness Write-up (OSCP)](https://www.youtube.com/watch?v=48RW7ILbe0M)
- [Kioptrix level 1](https://ferreirasc.github.io/post/kioptrix_level_1/)
- [Kioptrix level 1.1](https://ferreirasc.github.io/post/kioptrix_level_1_1/)
- [Kioptrix level 1.2](https://ferreirasc.github.io/post/kioptrix_level_1_2/)
- [Panabee: 1](https://medium.com/@muhammad.aliakbr98/vulnhub-panabee1-36e8f360f92e)
- [VulnHub Derpnstink Write-up (OSCP)](https://www.youtube.com/watch?v=wowC71aM7Qc)
#### HACKTHEBOX
Mi perfil de usuario : https://www.hackthebox.eu/home/users/profile/90122
##### Walkthrough
- [Netmon | Windows Privilege Escalation | enum & exploitation](https://www.youtube.com/watch?v=nMIhJtIHZNY)
- [Devel | Windows Privilege Escalation Using Exploit Suggestor | Metasploit](https://www.youtube.com/watch?v=RXvUnQDuVqI)
- https://www.peerlyst.com/posts/how-to-break-into-sp-jerome-v1-0-1-machine-ctf-writeup-spirited-wolf
- [Sauna [OSCP Style]](https://www.youtube.com/watch?v=3pnyfi8Fn6g)
- [Hack the box-Cascade: An Active Directory Penetration Test](https://medium.com/@dericksiby94/hack-the-box-cascade-an-active-directory-penetration-test-a3d7ff7baaec)
#### TRYHACKME
Mi perfil de usuario : https://tryhackme.com/p/cayu
##### Rooms
- [The Cod Caper](https://tryhackme.com/room/thecodcaper)
- [Brainpan 1](https://tryhackme.com/room/brainpan)
- [Sudo Buffer Overflow](https://tryhackme.com/room/sudovulnsbof)
- [Buffer Overflow Prep](https://tryhackme.com/room/bufferoverflowprep)
##### Walkthrough
- https://medium.com/@ratiros01/tryhackme-agent-sudo-30bc1c2b1561
- https://medium.com/@wisdomgoody/understanding-how-to-start-hacking-with-tryhackme-kenobi-write-up-cc356c314703
- https://medium.com/@ratiros01/tryhackme-mr-robot-ctf-2a962f34aa29
- [OWASP TOP 10- DAY 3: Sensitive Data Exposure](https://medium.com/@tirthesh.pawar/owasp-top-10-day-3-sensitive-data-exposure-163d92918677)
- [OWASP TOP 10- DAY 1: Injection](https://medium.com/@tirthesh.pawar/owasp-top-10-day-1-injection-e1d5b15b1baf)
- [Wonderland](https://aniqfakhrul.com/index.php/2020/06/07/tryhackme-wonderland/)
- [Break Out The Cage](https://aniqfakhrul.com/index.php/2020/06/27/break-out-the-cage-tryhackme/)
- [Year of the Fox](https://medium.com/@muhammad.aliakbr98/tryhackme-year-of-the-fox-631c7752fab2)
- [Brainpan](https://n00bmasterr.github.io/writeup/brainpan.html)
- https://www.youtube.com/watch?v=2ZZPwwXOH08 | https://www.youtube.com/watch?v=ZG2fXDusbDw
- [TryHackMe: Buffer Overflow Prep](https://medium.com/@muhammad.aliakbr98/tryhackme-buffer-overflow-prep-9b2ece17a13c)
###### OSCP PATH
- https://www.youtube.com/watch?v=4kAN7zNE7jo&list=PLwDy-UjR-HbujHwJHvuTLKEdq0kjaHi7R
#### ATTACHDEFENSE
- https://attackdefense.pentesteracademy.com/
#### BoF
https://attackdefense.pentesteracademy.com/listing?labtype=exploit-research&subtype=exploit-research-buffer-overflow
