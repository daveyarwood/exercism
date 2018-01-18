// Helper functions

// Returns the range of integers from 0 to n (exclusive).
function range(n) {
  return [...Array(n).keys()];
}

// Returns a random element from an array or string.
function randomChoice(x) {
  return x[Math.floor(Math.random() * x.length)];
}

// Returns an array of `n` results of calling a function `f`.
function repeatedly(n, f) {
  return range(n).map(_ => f());
}

const ALPHABET = "abcdefghijklmnopqrstuvwxyz";
class Alphabet {
  // Returns the index (0-25) of a (lowercase) letter.
  static index(letter) {
    return ALPHABET.indexOf(letter);
  }

  // Returns the (lowercase) letter at index `index` in the alphabet.
  static letter(index) {
    if (index >= 0) {
      return ALPHABET[index];
    } else {
      return ALPHABET[ALPHABET.length + index];
    }
  }

  // Returns a random (lowercase) letter.
  static randomLetter() {
    return randomChoice(ALPHABET);
  }
}

// Cipher class

class Cipher {
  static randomKey() {
    return repeatedly(100, () => Alphabet.randomLetter()).join('');
  }

  constructor(key=Cipher.randomKey()) {
    if (key.match(/^[a-z]+$/))
      this.key = key;
    else
      throw 'Bad key';
  }

  keyLetter(index) {
    return this.key[index % this.key.length];
  }

  shift(letter, amount) {
    let newIndex = (Alphabet.index(letter) + amount) % 26;
    return Alphabet.letter(newIndex);
  }

  shiftString(str, decoding=false) {
    let modifier = decoding ? -1 : 1;

    return range(str.length)
             .map(i => {
               let letter = str[i];
               let amount = Alphabet.index(this.keyLetter(i)) * modifier;
               return this.shift(letter, amount);
             })
             .join('');
  }

  encode(input) {
    return this.shiftString(input);
  }

  decode(input) {
    return this.shiftString(input, true);
  }
}

export default Cipher;
