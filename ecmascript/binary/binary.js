class Binary {
  constructor(binaryStr) {
    let bits = binaryStr.split('').map(Number);
    this.bits = bits.every(b => [0, 1].includes(b)) ? bits : [0];
  }

  toDecimal() {
    return this.bits
               .reverse()
               .reduce(((value, bit, index) =>
                         value + (bit * Math.pow(2, index))),
                       0);
  }
}

export default Binary;

