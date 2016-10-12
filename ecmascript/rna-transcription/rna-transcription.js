const DNA_TO_RNA = {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U'
};

class Transcriptor {
  toRna(dna_strand) {
    return dna_strand.split('')
                     .map(x => DNA_TO_RNA[x])
                     .join('')
  }
}

export default Transcriptor;
