import string

def is_pangram(sentence):
    letter_included = lambda letter: letter in sentence.lower()
    letters_included = map(letter_included, string.ascii_lowercase)
    return all(letters_included)
