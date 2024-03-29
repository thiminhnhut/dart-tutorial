# Một số cú pháp cơ bản trong ngôn ngữ lập trình Dart

- Nguồn tham khảo:
  
  - [Biến (Variable) trong ngôn ngữ Dart](https://openplanning.net/13913/dart-variables)

  - [Dart Programming Tutorial](https://www.tutorialspoint.com/dart_programming/index.htm)

## Khai báo biến

1. Khai báo biến với từ khóa `var`:

    ```dart
    var name = 'Thi Minh Nhut';
    var age = 30;
    var height = 1.75;
    ```

1. Khai báo biến từ khóa `dynamic`

    ```dart
    dynamic name = 'Thi Minh Nhut';
    name = 10;
    ```

    - Biến được khai báo với từ khóa `dynamic` thì có thể thay đổi kiểu dữ liệu được.

    - Biến được khai báo với từ khóa `var` thì không thể thay đổi kiểu dữ liệu.

1. Khai báo biến với kiểu dữ liệu cụ thể

    ```dart
    String name = 'Thi Minh Nhut';
    int age = 30;
    double height = 1.75;
    ```

1. Khai báo biến với từ khóa `final`

    - Với biến được khai báo bằng từ khóa `final`, chúng ta chỉ có thể gán giá trị cho
      biến này nhiều nhất là 1 lần (giúp cho chúng ta tránh việc gán giá trị mới
      cho biến đã có giá trị).

    - Ví dụ:

        ```dart
        final name;
        name = 'Thi Minh Nhut'; // OK
        name = 'Thi Minh Nhut 2'; // Error
        ```

1. Khai báo biến với từ khóa `const`:

    ```dart
    const name = 'Thi Minh Nhut';
    ```

    - Khi khai báo biến với từ khóa `const` chúng ta không thể thay đổi giá trị của biến.

## Các toán tử số học

| Toán tử | Ý nghĩa              | Ví dụ         |
| ------- | -------------------- | ------------- |
| `+`     | Cộng                 | `1 + 2 = 3`   |
| `-`     | Trừ                  | `1 - 2 = -1`  |
| `*`     | Nhân                 | `1 * 2 = 2`   |
| `/`     | Chia                 | `1 / 2 = 0.5` |
| `~/`    | Chia lấy phần nguyên | `1 ~/ 2 = 0`  |
| `%`     | Chia lấy phần dư     | `1 % 2 = 1`   |
| `++`    | Tăng 1 đơn vị        | `i++`         |
| `--`    | Giảm 1 đơn vị        | `i--`         |

## Các toán tử so sánh

| Toán tử | Ý nghĩa           | Ví dụ    | Kết quả |
| ------- | ----------------- | -------- | ------- |
| `==`    | So sánh bằng      | `1 == 2` | `false` |
| `!=`    | So sánh khác      | `1 != 2` | `true`  |
| `>`     | Lớn hơn           | `1 > 2`  | `false` |
| `<`     | Nhỏ hơn           | `1 < 2`  | `true`  |
| `>=`    | Lớn hơn hoặc bằng | `1 >= 2` | `false` |
| `<=`    | Nhỏ hơn hoặc bằng | `1 <= 2` | `true`  |

## Toán tử kiểm tra kiểu dữ liệu

| Toán tử     | Ý nghĩa               | Ví dụ                     | Kết quả        |
| ----------- | --------------------- | ------------------------- | -------------- |
| `is`, `is!` | Kiểm tra kiểu dữ liệu | `1 is int` `1 is! String` | `true` `false` |

## Toán tử về bit

| Toán tử | Ý nghĩa     | Ví dụ    | Kết quả     | Giải thích            |
| ------- | ----------- | -------- | ----------- | --------------------- |
| `&`     | AND         | `2 & 3`  | `0b10 = 2`  | `2 = 0b10` `3 = 0b11` |
| `\|`    | OR          | `2\| 3`  | `0b11 = 3`  | `2 = 0b10` `3 = 0b11` |
| `^`     | XOR         | `2 ^ 3`  | `0b01 = 1`  | `2 = 0b10` `3 = 0b11` |
| `~`     | NOT         | `~2`     | `= -3`      | `2 = 0b10`            |
| `<<`    | Shift left  | `2 << 1` | `0b100 = 4` | `2 = 0b10`            |
| `>>`    | Shift right | `2 >> 1` | `0b1 = 1`   | `2 = 0b10`            |

## Toán tử gán

| Toán tử | Ý nghĩa                              | Ví dụ                    | Kết quả |
| ------- | ------------------------------------ | ------------------------ | ------- |
| `=`     | Gán                                  | `a = 1 + 2`              | `3`     |
| `+=`    | Cộng                                 | `a += 1`                 | `4`     |
| `-=`    | Trừ                                  | `a -= 1`                 | `2`     |
| `*=`    | Nhân                                 | `a *= 2`                 | `4`     |
| `/=`    | Chia                                 | `a /= 2`                 | `1`     |
| `??=`   | Nếu biến bằng `null` thì gán giá trị | `var a = null` `a ??= 1` | `1`     |

## Toán tử logic

| Toán tử | Ý nghĩa | Ví dụ             | Kết quả |
| ------- | ------- | ----------------- | ------- |
| `&&`    | AND     | `true && true`    | `true`  |
| `\|\|`  | OR      | `true \|\| false` | `true`  |
| `!`     | NOT     | `!true`           | `false` |

## Biểu thức điều kiện

| Toán tử                           | Ý nghĩa                                                                             | Ví dụ          | Kết quả |
| --------------------------------- | ----------------------------------------------------------------------------------- | -------------- | ------- |
| `condition ? result 1 : result 2` | Nếu `condition` đúng thì trả về `result 1`, ngược lại thì `result 2`                | `true ? 1 : 2` | `1`     |
| `exp1 ?? exp2`                    | Nếu `exp1` khác `null` thì lấy kết quả `exp1`, ngược lại thì lấy kết quả của `exp2` | `1 ?? 2`       | `1`     |

## Vòng lặp với số lần xác định

1. Vòng lặp `for`

     ```dart
     for (var i = 0; i < 5; i++) {
        print(i);
     }
     ```

1. Vòng lặp `for in`:

    ```dart
    var list = [1, 2, 3];
    for (var i in list) {
        print(i);
    }
    ```

## Vòng lặp với số lần không xác định

1. Vòng lặp `while`

     ```dart
     var i = 0;
     while (i < 5) {
        print(i);
        i++;
     }
     ```

1. Vòng lặp `do while`

     ```dart
     var i = 0;
     do {
        print(i);
        i++;
     } while (i < 5);
     ```

## Break và Continue trong vòng lặp

1. `break` dùng để thoát khỏi vòng lặp

     ```dart
     for (var i = 0; i < 5; i++) {
        if (i == 3) {
           break;
        }
        print(i);
     }
     ```

1. `continue` dùng để bỏ qua các lệnh phía sau và chuyển sang lần lặp tiếp theo

     ```dart
     for (var i = 0; i < 5; i++) {
        if (i == 3) {
           continue;
        }
        print(i);
     }
     ```

## Điều khiển vòng lặp với label

1. Đặt label cho vòng lặp

     ```dart
     outerLoop:
     for (var i = 0; i < 5; i++) {
        for (var j = 0; j < 5; j++) {
           if (i == 2 && j == 2) {
              break outerLoop;
           }
           print('$i $j');
        }
     }
     ```

## Câu lệnh điều kiện if, if else, else if, switch case

1. Câu lệnh `if`

     ```dart
     var a = 1;
     if (a == 1) {
        print('a = 1');
     }
     ```

1. Câu lệnh `if else`

     ```dart
     var a = 1;
     if (a == 1) {
        print('a = 1');
     } else {
        print('a != 1');
     }
     ```

1. Câu lệnh `else if`

     ```dart
    var a = 1;
    if (a == 1) {
        print('a = 1');
    } else if (a == 2) {
        print('a = 2');
    } else {
        print('a != 1 and a != 2');
    }
    ```

1. Câu lệnh `switch case`

     ```dart
     var a = 1;
     switch (a) {
        case 1:
           print('a = 1');
           break;
        case 2:
           print('a = 2');
           break;
        default:
           print('a != 1 and a != 2');
           break;
     }
     ```

## Kiểu dữ liệu Number

1. Kiểu số nguyên (`int`) và kiểu số thực `double`.

     ```dart
     int a = 1;
     double b = 1.0;
     ```

1. Hàm `parse('string_number)` dùng để chuyển đổi chuỗi `string_number` thành số.

     ```dart
     var a = int.parse('1');
     var b = double.parse('1.0');
     ```

1. Một số thuộc tính của kiểu Number:

   | Thuộc tính | Ý nghĩa          | Ví dụ        | Kết quả |
   | ---------- | ---------------- | ------------ | ------- |
   | `isEven`   | Kiểm tra số chẵn | `1.isEven`   | `false` |
   | `isOdd`    | Kiểm tra số lẻ   | `1.isOdd`    | `true`  |
   | `negative` | Kiểm tra số âm   | `1.negative` | `false` |
   | `sign`     | Kiểm tra dấu     | `1.sign`     | `1`     |
   |            |                  | `-1.sign`    | `-1`    |
   |            |                  | `0.sign`     | `0`     |

1. Một số hàm toán học:

   | Hàm           | Ý nghĩa                                  | Ví dụ              | Kết quả |
   | ------------- | ---------------------------------------- | ------------------ | ------- |
   | `abs()`       | Trị tuyệt đối                            | `(-1).abs()`       | `1`     |
   | `ceil()`      | Làm tròn lên                             | `(1.1).ceil()`     | `2`     |
   | `floor()`     | Làm tròn xuống                           | `(1.9).floor()`    | `1`     |
   | `round()`     | Làm tròn                                 | `(1.5).round()`    | `2`     |
   | `toInt()`     | Chuyển `double` sang kiểu `int`          | `(1.0).toInt()`    | `1`     |
   | `toDouble()`  | Chuyển `int` sang kiểu `double`          | `(1).toDouble()`   | `1.0`   |
   | `toString()`  | Chuyển `int, double` sang kiểu `string`  | `(1).toString()`   | `'1'`   |
   | `compareTo()` | So sánh 2 số  `a > b` ra `-1`            | `1.compareTo(2)`   | `-1`    |
   |               | So sánh 2 số  `a == b` ra `0`            | `1.compareTo(1)`   | `0`     |
   |               | So sánh 2 số  `a < b` ra `1`             | `1.compareTo(0)`   | `1`     |
   | `remainder()` | Lấy phần dư  của `a` chia cho `b`        | `5.remainder(2)`   | `1`     |
   | `truncate()`  | Làm tròn xuống và loại bỏ phần thập phân | `(1.9).truncate()` | `1`     |

## Kiểu dữ liệu String

1. Khai báo và ghép string:

   ```dart
   var number = 1;
   String result = 'a + b = $number';
   print(result); // a + b = 1
   ```

2. Một số hàm trên string:

   | Hàm             | Ý nghĩa                            | Ví dụ                        | Kết quả           |
   | --------------- | ---------------------------------- | ---------------------------- | ----------------- |
   | `length`        | Độ dài của string                  | `'abc'.length`               | `3`               |
   | `isEmpty`       | Kiểm tra string rỗng               | `''.isEmpty`                 | `true`            |
   | `isNotEmpty`    | Kiểm tra string rỗng               | `'abc'.isNotEmpty`           | `true`            |
   | `codeUnits`     | Mảng mã ASCII                      | `'abc'.codeUnits`            | `[97, 98, 99]`    |
   | `toLowerCase()` | Chuyển string sang chữ thường      | `'ABC'.toLowerCase()`        | `'abc'`           |
   | `toUpperCase()` | Chuyển string sang chữ hoa         | `'abc'.toUpperCase()`        | `'ABC'`           |
   | `trim()`        | Loại bỏ khoảng trắng               | `' abc '.trim()`             | `'abc'`           |
   | `trimLeft()`    | Loại bỏ khoảng trắng bên trái      | `' abc '.trimLeft()`         | `'abc '`          |
   | `trimRight()`   | Loại bỏ khoảng trắng bên phải      | `' abc '.trimRight()`        | `' abc'`          |
   | `compareTo()`   | So sánh 2 string `a != b` ra `-1`  | `'a'.compareTo('b')`         | `-1`              |
   |                 | So sánh 2 string `a == b` ra `0`   | `'a'.compareTo('a')`         | `0`               |
   | `replaceAll()`  | Thay thế chuỗi con bằng chuỗi khác | `'abc'.replaceAll('a', 'b')` | `'bbc'`           |
   | `split()`       | Tách chuỗi thành mảng              | `'a b c'.split(' ')`         | `['a', 'b', 'c']` |
   | `substring()`   | Lấy chuỗi con                      | `'abc'.substring(1, 2)`      | `'b'`             |
   | `startsWith()`  | Kiểm tra chuỗi con bắt đầu bằng    | `'abc'.startsWith('a')`      | `true`            |
   | `endsWith()`    | Kiểm tra chuỗi con kết thúc bằng   | `'abc'.endsWith('c')`        | `true`            |
   | `contains()`    | Kiểm tra chuỗi con có tồn tại      | `'abc'.contains('b')`        | `true`            |
   | `codeUnitAt()`  | Lấy mã ASCII của ký tự tại vị trí  | `'abc'.codeUnitAt(1)`        | `98`              |

## Kiểu dữ liệu Boolean

- Khai báo và sử dụng:

   ```dart
   bool isTrue = true;
   bool isFalse = false;
   ```

## Kiểu dữ liệu List

1. Khai báo và sử dụng:

   ```dart
   var list = new List(3);
   list[0] = 1;
   list[1] = 2;
   list[2] = 3;

   // Or
   var list = [1, 2, 3];

   // Or
   var list = new List();
   list.add(1);
   list.add(2);
   ```

1. Một số hàm trong List:

   ```dart
   var list = [1, 2, 3];

   print(list.length); // 3
   
   print(list.first); // 1
   print(list.last); // 3

   print(list.isEmpty); // false
   print(list.isNotEmpty); // true

   list.reverse();
   print(list); // [3, 2, 1]

   var list = [1];
   print(list.single); // 1

   ```

1. Chèn phần tử vào list:

   ```dart
   var list = [1, 2, 3];
   list.insert(1, 4);
   print(list); // [1, 4, 2, 3]

   list.addAll([5, 6]);
   print(list); // [1, 4, 2, 3, 5, 6]

   list.add(7);
   print(list); // [1, 4, 2, 3, 5, 6, 7]
   ```

1. Cập nhật lại phần tử trong list:

   ```dart
   var list = [1, 2, 3];
   list[1] = 4;
   print(list); // [1, 4, 3]

   list.range(1, 2, [5, 6]);
   print(list); // [1, 5, 6, 3]
   ```

1. Xóa phần tử trong list:

   ```dart
   var list = [1, 2, 3, 4, 5, 6];
   list.remove(2);
   print(list); // [1, 3, 4, 5, 6]

   list.removeAt(1);
   print(list); // [1, 4, 5, 6]

   list.removeLast();
   print(list); // [1, 4, 5]

   list.removeRange(0, 1);
   print(list); // [4, 5]
   ```

## Kiểu dữ liệu Map và HashMap

1. Khai báo và sử dụng:

   ```dart
   var map = new Map();
   map['name'] = 'Nguyen Van A';
   map['age'] = 20;

   // Or
   var map = {
     'name': 'Nguyen Van A',
     'age': 20
   };
   ```

1. Một số thuộc tính của Map:

   ```dart
   var map = {
     'name': 'Nguyen Van A',
     'age': 20
   };

   print(map.length); // 2

   print(map.isEmpty); // false
   print(map.isNotEmpty); // true

   print(map.keys); // (name, age)
   print(map.values); // (Nguyen Van A, 20)
   ```

1. Một số hàm trong Map:

   ```dart
   var map = {
     'name': 'Nguyen Van A',
     'age': 20
   };
   print(map); // {name: Nguyen Van A, age: 20}

   map.addAll({
     'address': 'Viet Nam',
     'phone': '0123456789'
   });
   print(map); // {name: Nguyen Van A, age: 20, address: Viet Nam, phone: 0123456789}

   map.remove('address');
   print(map); // {name: Nguyen Van A, age: 20, phone: 0123456789}

   map.forEach((key, value) {
     print('$key: $value');
   });

   map.clear();
   print(map); // {}
   ```

## Kiểu dữ liệu Set và HastSet

1. Khai báo và sử dụng:

   ```dart
   var set = new Set();
   set.add(1);
   set.add(2);
   set.add(3);

   // Or
   var set = {1, 2, 3};

   // Or
   var set = new Set.from([1, 2, 3]);
   ```

## Kiểu dữ liệu `Queue`

1. Khai báo và sử dụng:

   ```dart
   var queue = new Queue();
   queue.add(1);
   queue.add(2);
   queue.add(3);

   print(queue); // {1, 2, 3}

   // Or
   var queue = new Queue.from([1, 2, 3]);
   print(queue); // {1, 2, 3}
   ```

1. Một số thao tác trên `Queue`:

   ```dart
   var queue = new Queue.from([1, 2, 3]);

   print(queue.first); // 1
   print(queue.last); // 3

   print(queue.isEmpty); // false
   print(queue.isNotEmpty); // true

   queue.add(4);
   print(queue); // {1, 2, 3, 4}

   queue.addFirst(0); // {0, 1, 2, 3, 4}
   queue.addLast(5); // {0, 1, 2, 3, 4, 5}

   queue.removeFirst();
   print(queue); // {1, 2, 3, 4, 5}

   queue.removeLast();
   print(queue); // {1, 2, 3, 4}

   queue.clear();
   print(queue); // {}
   ```

## Function

1. Khai báo function:

   ```dart
   void name_function() {
     print('Hello World');
   }

   // Or
   void name_function() => print('Hello World');

   // Or
   name_function() {
       print('Hello World');
   }
   ```

1. Gọi function:

   ```dart
   void name_function() {
     print('Hello World');
   }

   void main() {
     name_function();
   }
   ```

1. Function có tham số và có kết quả trả về:

   ```dart
   int sum(int a, int b) {
     return a + b;
   }
   ```

1. Function có tham số tùy chọn:

   ```dart
   void name_function(String name, [int age]) {
     print('Name: $name');
     print('Age: $age');
   }

   void main() {
     name_function('Nguyen Van A');
     name_function('Nguyen Van A', 20);
   }
   ```

1. Function có tên tham số tùy chọn:

   ```dart
   void name_function(String name, {int age}) {
     print('Name: $name');
     print('Age: $age');
   }

   void main() {
     name_function('Nguyen Van A');
     name_function('Nguyen Van A', age: 20);
   }
   ```

1. Function có tham số có giá trị mặc định:

   ```dart
   void name_function(String name, {int age = 20}) {
     print('Name: $name');
     print('Age: $age');
   }

   void main() {
     name_function('Nguyen Van A');
     name_function('Nguyen Van A', age: 30);
   }
   ```

1. Function đệ quy (recursive function):

   ```dart
   int factorial(int n) {
     if (n == 0) {
       return 1;
     } else {
       return n * factorial(n - 1);
     }
   }
   ```

1. Lambda function:

   ```dart
   int sum(a, b) => a + b;
   ```
