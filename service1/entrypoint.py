import sys
import hashlib

#print(sys.stdin.readlines())

inp = sys.stdin.readlines()
print("volumes promjena")
try:
    hash_func = inp[0].strip()
    message = '\n'.join(inp[1:]).strip()
    try:
        h = hashlib.new(hash_func)
    except ValueError:
        hash_func="md5"
        h = hashlib.new(hash_func)
    print("Hash function used: ", hash_func)
    h.update(str.encode(message))
    print("Hashed message:")
    print(h.hexdigest())
except IndexError:
    print("No http request found!")
