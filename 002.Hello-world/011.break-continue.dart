void main() {
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }

  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}