#!/usr/bin/python3
#interactive-client.py

import socket
import telnetlib

def interact(socket):
    t = telnetlib.Telnet()
    t.socket = socket
    t.interact()

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
host = socket.gethostname()
port = 8080

client.connect((host, port)) # Connect to our client
msg = client.recv(1024)
print (msg.decode('ascii'))
interact(client)
client.close()
