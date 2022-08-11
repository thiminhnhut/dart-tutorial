void main() {
  var a = 2; // 0b10
  var b = 3; // 0b11

  print(a & b); // 0b10 = 2 (AND)

  print(a | b); // 0b11 = 3 (OR)

  print(a ^ b); // 0b01 = 1 (XOR)

  print(~a); // 0b11111111111111111111111111111101 = -3 (NOT)

  print(a << 1); // 0b100 = 4 (Left shift)
  print(a >> 1); // 0b1 = 1 (Right shift)
}
