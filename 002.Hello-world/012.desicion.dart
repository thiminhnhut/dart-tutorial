void main() {
  var a = 1;
  if (a > 1) {
    print(a);
  }

  if (a == 1) {
    print('a = 1');
  } else {
    print('a != 1');
  }

  var age = 18;
  if (age < 18) {
    print('You are a child');
  } else if (age < 60) {
    print('You are an adult');
  } else {
    print('You are a senior');
  }

  switch (a) {
    case 1:
      print('a = 1');
      break;
    case 2:
      print('a = 2');
      break;
    default:
      print('a != 1 and a != 2');
  }
}
