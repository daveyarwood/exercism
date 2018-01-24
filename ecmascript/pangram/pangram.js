// Returns the set difference set1 - set2.
function difference(set1, set2) {
  return new Set([...set1].filter(x => !set2.has(x)));
}

// Returns true if set1 and set2 are the same set of elements.
function setEquals(set1, set2) {
  return difference(set1, set2).size == 0 &&
         difference(set2, set1).size == 0;
}

const ALPHABET = new Set("abcdefghijklmnopqrstuvwxyz");

class Pangram {
  constructor(sentence) {
    this.letters = new Set(sentence.toLowerCase()
                                   .split('')
                                   .filter(c => c.match(/[a-z]/)));
  }

  isPangram() {
    return setEquals(this.letters, ALPHABET);
  }
}

export default Pangram;
