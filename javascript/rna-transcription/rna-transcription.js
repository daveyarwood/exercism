var dnaToRna = {
  G: 'C',
  C: 'G',
  T: 'A',
  A: 'U'
}

var dnaTranscriber = function() {};

dnaTranscriber.prototype.toRna = function(dna) {
  return dna.split('')
            .map(function(nucleotide) {
              return dnaToRna[nucleotide];
            }).join('');
}

module.exports = dnaTranscriber;
