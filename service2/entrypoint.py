import requests
import sys
import os
from requests.exceptions import MissingSchema


service1_host=os.getenv('SERVIS1_HOST')
service1_port=os.getenv('SERVIS1_PORT')

SERVICE1_URL = f"http://{service1_host}:{service1_port}"
#print(SERVICE1_URL)

url=sys.stdin.readline()
#urlpom="https://crontab.guru/#0_8_*_*_*"
try:
    message = requests.get(url).text
    ###print(message)
except MissingSchema:
    print("invalid url!!!!!")
    message=""

#print(url)
data = ["md5", message]

#print(SERVICE1_URL, "\n".join(data))
print(requests.post(SERVICE1_URL, data="\n".join(data)))
print("promjena za test")


