import requests
import urllib.parse

res = set()
for code in range(1, 255):
    params = urllib.parse.urlencode({"q": chr(code)})
    print(code)
    resp = requests.get(f"https://smolder-alexandria.ctf.csaw.io/vault/search?{params}")
    print(resp.text)
    if resp.status_code != 200:
        continue
    res.update(resp.json()["results"])

with open("smolder.txt", "w") as f:
    for l in res:
        f.write(l + "\n")
