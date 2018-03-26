var Pangram = function(sentence) {
  this.letters = new Set(sentence.toLowerCase()
                                 .split('')
                                 .filter(c => c.match(/[a-z]/)));
};

Pangram.prototype.isPangram = function() {
  return this.letters.size == 26;
}

module.exports = Pangram;
