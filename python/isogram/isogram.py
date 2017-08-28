import re

def is_isogram(string):
    s = re.sub(r"[^a-zA-Z]", "", string).lower()
    occurs_once = lambda letter: s.count(letter) == 1
    return all(map(occurs_once, s))
