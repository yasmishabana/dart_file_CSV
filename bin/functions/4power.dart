void main() {
  int powernumber = power(5, 3);
  print("power is " + powernumber.toString());
}

int power(int x, int n) {
  int retval = 1;
  for (int i = 0; i < n; i++) {
    retval *= x;
  }
  return retval;
}
