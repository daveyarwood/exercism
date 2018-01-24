class Pangram {
  constructor(sentence) {
    this.letters = new Set(sentence.toLowerCase()
                                   .split('')
                                   .filter(c => c.match(/[a-z]/)));
  }

  isPangram() {
    return this.letters.size == 26;
  }
}

export default Pangram;
