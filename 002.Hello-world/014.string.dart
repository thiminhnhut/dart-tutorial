void main() {
  var a = 1;
  var b = 1;
  var c = a + b;
  String result = '$a + $b = $c';
  print(result);

  print('Hello, World!'.length); // 13

  print('Hello, World!'.isEmpty); // false
  print(''.isEmpty); // true

  print('Hello, World!'.isNotEmpty); // true
  print(''.isNotEmpty); // false

  print('Hello, World!'
      .codeUnits); // [72, 101, 108, 108, 111, 44, 32, 87, 111, 114, 108, 100, 33]

  print('hello!   '.trim()); // 'hello!'
  print('hello'.compareTo('hello')); // 0
  print('hello'.compareTo('world')); // -1
}
