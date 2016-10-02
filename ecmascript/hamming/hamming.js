function range(n) {
  return [...Array(n).keys()];
}

function zip(a, b) {
  return range(a.length).map(i => [a[i], b[i]]);
}

class Hamming {
  compute(a, b) {
    if (a.length != b.length) {
      throw new Error('DNA strands must be of equal length.');
    }

    return zip(a, b).reduce((acc, [x, y]) => x == y ? acc : acc + 1, 0);
  }
}

export default Hamming;
