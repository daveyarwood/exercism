var Year = function(year) {
  this.year = year;
};

Year.prototype.isDivisibleBy = function(n) {
  return this.year % n == 0;
}

Year.prototype.isLeap = function() {
  return this.isDivisibleBy(400) ||
         (this.isDivisibleBy(4) && !this.isDivisibleBy(100));
};

module.exports = Year;
