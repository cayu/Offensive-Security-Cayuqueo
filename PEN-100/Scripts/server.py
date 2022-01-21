#!/usr/bin/python3
#server.py

import socket 

host = socket.gethostname()
port = 8080
     
server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind((host,port))
server.listen(2)
print('Server is listening for incoming connections')
     
while True:
    conn,addr = server.accept()
    print("Connection Received from %s" % str(addr))
    msg = 'Connection Established'+ "\r\n"
    conn.send(msg.encode('ascii'))
    conn.close()
