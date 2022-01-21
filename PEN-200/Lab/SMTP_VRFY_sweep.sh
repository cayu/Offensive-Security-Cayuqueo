#!/bin/bash
usernames="/usr/share/metasploit-framework/data/wordlists/unix_users.txt"
for ip in `seq 1 254`
do
    while read LINE; do
        python SMTP_VRFY.py $LINE 10.1.1.$ip
    done < $usernames
done
