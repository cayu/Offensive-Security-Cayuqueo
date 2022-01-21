#!/usr/bin/python
import socket
import sys
if len(sys.argv) != 3:
    print ("Usage: "+sys.argv[0]+" <username> <ip>")
    sys.exit(0)
# Create a Socket
s=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# Connect to the Server
connect=s.connect((sys.argv[2],25))
# Receive the banner
banner=s.recv(1024)
print banner
# VRFY a user
s.send('VRFY ' + sys.argv[1] + '\r\n')
result=s.recv(1024)
print result
# Close the socket
s.close()
