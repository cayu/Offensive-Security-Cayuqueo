#!/bin/bash

SCANS_DIR="scans"
TMP_DIR="temp"

echo ""
echo -e "\033[1mNmap Scanning Script\033[0m"
echo ""

# Usernames and mail addresses to send tarball with scan results
shownames ()
{
    echo "USERS:"
    echo ""
    echo "JD - John Doe"
    echo ""
}

listusers ()
{
while [ -z "$email" ]
do
if [ "$username" == "empty" ]; then
    echo "Enter your initials:"
    echo ""
    shownames
    echo -n "Initials? "
    read username
fi
   case "$username" in
	JD|jd) email="john.doe@example.com";;
	*) username="empty";;
   esac
done
}

usage ()
{
echo "Usage: ${0##*/} [-b] -f {source_file} {scan_name} [initials]"
echo "       ${0##*/} [-b] -i {ip_range} {scan_name} [initials]"
echo "       ${0##*/} -h"
echo "       ${0##*/} -u"
echo ""
echo "       -h shows this help"
echo "       -u shows user list"
echo "       -b scan only high ports (optional)"
echo "       -f take a file containing IP addresses"
echo "       -i IP range to scan (notation: 10.10.10.0-255 o 10.10.10.0/24."
echo "       {scan_name} it cannot contain whitespaces"
echo "       [initials] user initials"
echo ""
}

# Check input parameters
if [ "$1" == "-u" ]; then
    shownames
    exit 0
fi
highonly="n"
usefile="n"
if [[ "$1" == "-h" || -z "$1" ]]; then
   usage
   exit 0
fi
if [[ "$1" != "-h" && "$1" != "-b" && "$1" != "-f" && "$1" != "-i" ]]; then
   usage
   echo "Invalid parameter: $1"
   exit 1
fi
if [ "$1" == "-b" ]; then
   highonly="y"
   shift
fi
if [[ -z "$2" || -z "$3" ]]; then
   usage
   echo "Invalid number of parameters"
   exit 2
fi
case "$1" in
"-f") iplist="$2"
      usefile="y";;
"-i") ip_addrs="$2";;
*) echo "Internal error...?"
   exit 99;;
esac
scan_name="$3"
if [ -z "$iplist" ]; then
    ip_addrs2="$ip_addrs"
else
    ip_addrs2="-iL $iplist"
    ip_addrs="$iplist"
fi
if [ "$4" ]; then
    username="$4"
else
    username="empty"
fi

# Check if file exists and if it is valid
if [ "$usefile" == "y" ]; then
   if [[ ! -e "$ip_addrs" || ! -f "$ip_addrs" || ! -s "$ip_addrs" || ! -r "$ip_addrs" ]]; then
      echo "Invalid file. Aborting..."
      exit 3
   fi
   ip_addrs="${ip_addrs##*/}"
else
   net="${ip_addrs2%%/*}"
   mask="${ip_addrs2##*/}"
   if [ "$net" != "$mask" ]; then
      ip_addrs="$net..$mask"
   fi
fi

# Which user runs the script
listusers

echo ""
echo -e "\033[01;36mScan launched successfully!\033[0m"
echo ""

# Scan profiles definition
directory="$scan_name.$username.nmapscan`date +%H%M-%d%m%y`"
mkdir "$TMP_DIR/$directory"
script="$TMP_DIR/nmapscan-$scan_name-$ip_addrs"

name[0]="SWEEP"
dst[0]="nmap-$scan_name-$ip_addrs-${name[0]}"
arg[0]=" -sP -PS80 --stylesheet nmap.xsl -oA $TMP_DIR/${dst[0]} $ip_addrs2 "

name[1]="WEB"
dst[1]="nmap-$scan_name-$ip_addrs-${name[1]}"
arg[1]=" -sT -P0 -p80,443 --stylesheet nmap.xsl -oA $TMP_DIR/${dst[1]} $ip_addrs2 "

name[2]="COMMON"
dst[2]="nmap-$scan_name-$ip_addrs-${name[2]}"
arg[2]=" -sT -P0 -p21,22,23,25,110,113,143,389 --stylesheet nmap.xsl -oA $TMP_DIR/${dst[2]} $ip_addrs2 "

name[3]="UDP"
dst[3]="nmap-$scan_name-$ip_addrs-${name[3]}"
arg[3]=" -sU -P0 -p7,13,19,53,69,123,137,161,500,1434,1645,1812,2483,2484,3306 --stylesheet c:/nmap.xsl -oA $TMP_DIR/${dst[3]} $ip_addrs2 "

name[4]="FAST"
dst[4]="nmap-$scan_name-$ip_addrs-${name[4]}"
arg[4]=" -vv -sV -P0 -F -O --stylesheet nmap.xsl -oA $TMP_DIR/${dst[4]} $ip_addrs2 "

name[5]="HIGH-LIVE"
dst[5]="nmap-$scan_name-$ip_addrs-${name[5]}"
arg[5]=" -sT -PS80 -n -p- --stylesheet nmap.xsl -oA $TMP_DIR/${dst[5]} $ip_addrs2 "

name[6]="HIGHPORTS"
dst[6]="nmap-$scan_name-$ip_addrs-${name[6]}"
arg[6]=" -sS -n -P0 -p- --stylesheet nmap.xsl -oA $TMP_DIR/${dst[6]} $ip_addrs2 "

# Creating the scan script
echo "#!/bin/bash" > $script
i=0
while [ "$i" -lt "${#name[@]}" ]
do
   if [[ "$highonly" == "y" && "${name[$i]}" != "HIGHPORTS" ]]; then
      let "i+=1"
      continue
   fi
   echo "" >> $script
   echo "echo nmap ${arg[$i]}" >> $script
   echo "nmap ${arg[$i]}" >> $script
   echo "mv $TMP_DIR/${dst[$i]}.nmap $TMP_DIR/$directory" >> $script
   echo "mv $TMP_DIR/${dst[$i]}.gnmap $TMP_DIR/$directory" >> $script
   echo "mv $TMP_DIR/${dst[$i]}.xml $TMP_DIR/$directory" >> $script
   let "i+=1"
done

# Create tarball and send it by email to user
echo "" >> $script
echo "tar cfz $TMP_DIR/$directory.tar.gz -C $TMP_DIR/ $directory" >> $script
echo "directory2=\"$scan_name`date +%H%M-%d%m%y`\"" >> $script
echo "mv $TMP_DIR/$directory.tar.gz $SCANS_DIR/$directory2" >> $script
echo "mail -s \"Nmap Complete - Scan ${name[$i]} para $scan_name por $username\" $email" >> $script

# Delete temporary files
echo "rm -rf $TMP_DIR/*" >> $script

# Run the scan script
chmod a+x $script
nohup $script >& /dev/null &
exit 0
