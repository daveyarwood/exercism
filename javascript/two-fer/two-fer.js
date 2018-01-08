var TwoFer = function () {};

TwoFer.prototype.twoFer = function twoFer (who) {
  if (who == undefined) return twoFer('you');
  return `One for ${who}, one for me.`;
};

module.exports = TwoFer;
