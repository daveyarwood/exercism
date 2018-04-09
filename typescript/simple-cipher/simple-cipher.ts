// Returns the range of integers from 0 to n (exclusive).
function range(n: number): number[] {
  return [...Array(n).keys()];
}

// Returns a random element from an array or string.
function randomChoice(x: any[]|string): any {
  return x[Math.floor(Math.random() * x.length)];
}

// Returns an array of `n` results of calling a function `f`.
function repeatedly(n: number, f: Function): any[] {
  return range(n).map(_ => f());
}

const ALPHABET = "abcdefghijklmnopqrstuvwxyz";
class Alphabet {
  // Returns the index (0-25) of a (lowercase) letter.
  static index(letter: string): number {
    return ALPHABET.indexOf(letter);
  }

  // Returns the (lowercase) letter at index `index` in the alphabet.
  static letter(index: number): string {
    if (index >= 0) {
      return ALPHABET[index];
    } else {
      return ALPHABET[ALPHABET.length + index];
    }
  }

  // Returns a random (lowercase) letter.
  static randomLetter(): string {
    return randomChoice(ALPHABET);
  }
}

class SimpleCipher {
  private static randomKey(): string {
    return repeatedly(100, () => Alphabet.randomLetter()).join('');
  }

  readonly key: string;

  constructor(key=SimpleCipher.randomKey()) {
    if (key.match(/^[a-z]+$/))
      this.key = key;
    else
      throw 'Bad key';
  }

  encode(input: string): string {
    return this.shiftString(input);
  }

  decode(input: string): string {
    return this.shiftString(input, true);
  }

  private keyLetter(index: number): string {
    return this.key[index % this.key.length];
  }

  private shift(letter: string, amount: number) {
    let newIndex = (Alphabet.index(letter) + amount) % 26;
    return Alphabet.letter(newIndex);
  }

  private shiftString(str: string, decoding: boolean = false) {
    let modifier = decoding ? -1 : 1;

    return range(str.length)
             .map(i => {
               let letter = str[i];
               let amount = Alphabet.index(this.keyLetter(i)) * modifier;
               return this.shift(letter, amount);
             })
             .join('');
  }
}

export default SimpleCipher;
