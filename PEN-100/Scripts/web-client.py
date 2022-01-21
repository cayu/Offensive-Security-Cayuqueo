#!/usr/bin/python3
#web-client.py

import requests

url = "http://www.offensive-security.com"

response = requests.get(url)
print(response.content.decode())
