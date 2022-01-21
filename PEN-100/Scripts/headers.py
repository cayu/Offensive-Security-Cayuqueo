#!/usr/bin/python3
#headers.py

import requests

url = "http://www.offensive-security.com"
response = requests.get(url)
print(response.headers)
