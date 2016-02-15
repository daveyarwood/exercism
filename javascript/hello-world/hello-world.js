var HelloWorld = function() {};

HelloWorld.prototype.hello = function(input) {
  var name = input == '' ? 'World' : input;
  return 'Hello, ' + name + '!';
};

module.exports = HelloWorld;
