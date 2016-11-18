function range(n) {
  return Array.apply(null, Array(n)).map(function(_, i) { return i; });
}

function zip(a, b) {
  return range(a.length).map(function(i) { return [a[i], b[i]] });
}

var Hamming = function() {};

Hamming.prototype.compute = function(a, b) {
    if (a.length != b.length) {
      throw new Error('DNA strands must be of equal length.');
    }

    return zip(a, b).reduce(function(acc, pair) {
      var x = pair[0];
      var y = pair[1];
      return x == y ? acc : acc + 1;
    }, 0);
};

module.exports = Hamming;

