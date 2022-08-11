void main() {
  var a = 1;
  var b = 2;

  var c = a > b; // false
  var d = b > 1; // true

  print(c && d); // false
  print(c || d); // true
  print(!c); // true
}
