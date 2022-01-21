#!/usr/bin/python3
#client.py

import socket

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

host = socket.gethostname()
port = 8080

try:
    client.connect((host, port))
    msg = client.recv(1024)
    client.close()
    print (msg.decode('ascii'))
    
except ConnectionRefusedError:
    print "(The server is not accepting our connection request!")
    exit(1)
   
print ("This sentence will only print if the except block was not executed.")
