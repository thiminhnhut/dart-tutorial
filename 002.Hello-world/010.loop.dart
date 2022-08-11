void main() {
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  var list = [1, 2, 3, 4, 5];
  for (var value in list) {
    print(value);
  }

  var n = 10;
  while (n > 0) {
    print(n);
    n--;
  }

  var m = 0;
  do {
    print(m);
    m--;
  } while (m > 0);
}
