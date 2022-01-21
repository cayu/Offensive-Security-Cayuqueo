#!/usr/bin/python3
#scanner.py

import socket
import time

startTime = time.time()

target = input('Please specify the host that you want to scan: ')
target_IP = socket.gethostbyname(target)
print ('Initiating Scan for host: ', target_IP)
     
for i in range(1, 1000):
    scanner = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    conn = scanner.connect_ex((target_IP, i))
    if(conn == 0):
        print ('Port %d: OPEN' %(i))
    scanner.close()

endTime = time.time()
totalTime = endTime - startTime
print('Total Time: %s' %(totalTime))
