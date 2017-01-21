import ceylon.test { ... }

{[Integer, Boolean]*} cases =>
  {[2015, false], [2016, true], [2100, false], [2000, true]};

test
parameters(`value cases`)
void testLeapYear(Integer year, Boolean isLeap) {
  assertEquals(leapYear(year), isLeap);
}
