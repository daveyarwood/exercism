int compute(char* a, char* b) {
  int difference = 0;

  char x, y;
  int i = 0;

  x = *(a + i);
  y = *(b + i);

  while (!(x == '\0' || y == '\0')) {
    if (x != y) difference++;

    i++;
    x = *(a + i);
    y = *(b + i);
  }

  return difference;
}
