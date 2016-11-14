module helloworld_test;

import std.stdio;

string hello() {
  return hello("World");
}

string hello(string name) {
  return "Hello, " ~ name ~ "!";
}

void main() {
    assert(hello() == "Hello, World!");
    assert(hello("Alice") == "Hello, Alice!");
    assert(hello("Bob") == "Hello, Bob!");
    assert(hello("") == "Hello, !");

    writeln("All tests passed.");
}
