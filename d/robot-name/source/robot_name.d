
module robot;

import std.ascii;
import std.random;
import std.regex;
import std.stdio;

class Robot {
  static bool[string] nameHistory;

  static string generateName() {
    string name = "";
    foreach (_; 0 .. 2) name ~= uppercase[uniform(0, $)];
    foreach (_; 0 .. 3) name ~= digits[uniform(0, $)];

    if (name in nameHistory)
      return generateName();

    nameHistory[name] = true;
    return name;
  }

  string name;

  this() {
    reset();
  }

  void reset() {
    name = generateName();
  }
}

unittest
{

// test for properly formatted name
{
	auto pattern = regex(`^[A-Z]{2}\d{3}`);
	auto theRobot = new Robot();

	// test the regex pattern
	assert(matchAll("VAV224", pattern).empty);
	assert(matchAll("V221", pattern).empty);
	assert(matchAll("190", pattern).empty);
	assert(matchAll("12345", pattern).empty);
	assert(matchAll("SB1", pattern).empty);
	assert(matchAll("TT", pattern).empty);

	writefln("Robot name: %s", theRobot.name);

	// test that the name respects the pattern
	// that is: "2 uppercase letters followed by 3 digits"
	assert(!matchAll(theRobot.name, pattern).empty);
}

// test name stickiness
{
	auto theRobot = new Robot();
	auto name = theRobot.name;

	writefln("Robot name: %s", theRobot.name);
	assert(name == theRobot.name);
}

// test different names for different Robots
{
	auto erTwoDeeTwo = new Robot();
	auto beeBeeEight = new Robot();

	writefln("Robot name: %s", erTwoDeeTwo.name);
	writefln("Robot name: %s", beeBeeEight.name);
	assert(erTwoDeeTwo.name != beeBeeEight.name);
}

// test name reset
{
	auto theRobot = new Robot();
	auto nameOne = theRobot.name;
	theRobot.reset();
	auto nameTwo = theRobot.name;

	writefln("Robot name: %s", nameOne);
	writefln("Robot name: %s", nameTwo);
	assert(nameOne != nameTwo);
}

}

