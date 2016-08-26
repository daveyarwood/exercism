var LeapYear = function(year) {
  this.year = year;
};

LeapYear.prototype.isDivisibleBy = function(n) {
  return this.year % n == 0;
}

LeapYear.prototype.isLeap = function() {
  return this.isDivisibleBy(400) ||
         (this.isDivisibleBy(4) && !this.isDivisibleBy(100));
};

module.exports = LeapYear;
