void main() {
  var a = 1;
  var b = 2;

  var c = a + b; // 3

  var d = null;
  d ??= 10; // 10
  print(d);

  var e = 10.0;
  e += 1;
  print(e); // 11

  e -= 1;
  print(e); // 10

  e *= 2;
  print(e); // 20

  e /= 2;
  print(e); // 10
}
