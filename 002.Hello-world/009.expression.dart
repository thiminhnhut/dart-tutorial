void main() {
  var a = 1;
  var b = 2;
  var c = a > b ? a - b : b - a; // 1
  print(c); // 1

  var d = a > b ? a - b : null; // null
  var e = a > b ? null : b - a; // 1
  var f = d ?? e; // 1
  print(f);
}
