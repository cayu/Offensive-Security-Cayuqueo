#!/usr/bin/python3
#web-client.py

import requests

url = "http://www.offensive-security.com/doesnotexist.html"

response = requests.get(url)
print(response.status_code)
