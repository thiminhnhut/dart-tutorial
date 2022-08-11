void main() {
  int a = 1;
  double b = 2.0;

  String str = '10.0';
  double c = double.parse(str); // 10.0
  print(c);

  var number = -10;
  print(number.isNegative);
  print(number.isEven);
  print(number.isOdd);
  print(number.sign);

  print(-1.abs()); // 1
  print(2.1.ceil()); // 3
  print(2.7.floor()); // 2
  print(2.123.round()); // 2
  print(2.544.round()); // 3
  print(1.22.toInt()); // 1
  print(12.toString()); // '12'

  print(1.compareTo(2)); // -1
  print(1.compareTo(1)); // 0
  print(2.compareTo(1)); // 1

  print(5.remainder(2)); // 1
  print(2.2233.truncate()); // 2
}
