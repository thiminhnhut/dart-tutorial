# Lập trình hướng đối tượng trong Dart

- Nguồn tham khảo: [Dart Programming - Classes](https://www.tutorialspoint.com/dart_programming/dart_programming_classes.htm)

## Cấu trúc cơ bản của Class

```dart
class ClassName {
  // fields
  // getters and setters
  // constructors or multiple constructors
  // methods
}
```

## Ví dụ về xây dựng Class trong Dart

1. Khai báo class có tên là `Car` như sau:

    ```dart
    class Car {
        // fields
        late String engine;

        // getter and setter
        String get car_engine {
          return this.engine;
        }

        set car_engine(String engine) {
          this.engine = engine;
        }

        // Constructor
        Car(String engine) {
          this.engine = engine;
        }

        // Named Constructor
        Car.namedConst(String engine) {
          this.engine = engine;
        }

        // Methods
        void display() {
          print('engine = ${this.engine}');
        }
    }
    ```

   - Trỏ đến thuộc tính của class (field) bằng từ khóa `this`.

1. Sử dụng class vừa tạo:

   ```dart
   void main() {
     var car = new Car("E1001");
     car.display(); // engine = E1001

     // var car2 = new Car.namedConst("E1002");
     // car2.display();

     car.car_engine = "V8";
     print(car.car_engine); // V8
   }
   ```

## Tính kế thừa của các Class

1. Dart hỗ trợ các kiểu kế thừa sau:

   - **Single** `Class B` được kế thừa từ `Class A`.

   - **Multiple** `Class C` được kế thừa từ `Class A` và `Class B`.

   - **Multi-level** `Class B` được kế thừa từ `Class A`, `Class C` được kế thừa từ `Class B`.

1. Sử dụng từ khóa `extends` để thực hiện kế thừa giữa các class với nhau.

1. Ví dụ tính kế thừa trong trường hợp 1:

    ```dart
    class Vehicle {
      String model = "2020";
      void show() {
        print("Vehicle model: ${this.model}");
      }
    }
  
    class Car extends Vehicle {
      String engine = "E1001";
      void display() {
        print("Engine: ${this.engine}");
      }
    }
  
    void main() {
      var car = new Car();
      car.show(); // Vehicle model: 2020
      car.display(); // Engine: E1001
    }
    ```

1. Ví dụ về tính kế thừa trong trường hợp 2:

    ```dart
    class Vehicle {
      String model = "2020";
      void show() {
        print("Vehicle model: ${this.model}");
      }
    }
  
    class Car {
      String engine = "E1001";
      void display() {
        print("Engine: ${this.engine}");
      }
    }
  
    class NewCar extends Vehicle with Car {
      String color = "Red";
      void printColor() {
        print("Color: ${this.color}");
      }
    }
  
    void main() {
      var car = new NewCar();
      car.show(); // Vehicle model: 2020
      car.display(); // Engine: E1001
      car.printColor(); // Color: Red
    }
    ```

1. Ví dụ về tính kế thừa trong trường hợp 3:

    ```dart
    class Vehicle {
      String model = "2020";
      void show() {
        print("Vehicle model: ${this.model}");
      }
    }

    class Car extends Vehicle {
      String engine = "E1001";
      void display() {
        print("Engine: ${this.engine}");
      }
    }

    class NewCar extends Car {
      String color = "Red";
      void printColor() {
        print("Color: ${this.color}");
      }
    }

    void main() {
      var car = new NewCar();
      car.show(); // Vehicle model: 2020
      car.display(); // Engine: E1001
      car.printColor(); // Color: Red
    }
    ```

1. Method overriding trong Dart:

    ```dart
    class Vehicle {
      String model = "2020";
      void show() {
        print("Vehicle model: ${this.model}");
      }
    }

    class Car extends Vehicle {
      String engine = "E1001";

      @override
      void show() {
        print("Engine: ${this.engine}");
      }
    }

    void main() {
      var car = new Car();
      car.show(); // Engine: E1001
    }
    ```
  
1. Từ khóa `static`:

    ```dart
    class Vehicle {
      static String model = "2020";
      static void show() {
        print("Vehicle model: ${Vehicle.model}");
      }
    }

    void main() {
      Vehicle.show(); // Vehicle model: 2020
    }
    ```

1. Từ khóa `super`:

    ```dart
    class Vehicle {
      String model = "2020";
      void show() {
        print("Vehicle model: ${this.model}");
      }
    }

    class Car extends Vehicle {
      String engine = "E1001";
      void display() {
        print("Engine: ${this.engine}");
      }

      void show() {
        super.show();
        print("Engine: ${this.engine}");
      }
    }

    void main() {
      var car = new Car();
      car.show();
      /*
      Vehicle model: 2020
      Engine: E1001
      */
    }
    ```

1. Toán tử  `..`

    ```dart
    class Vehicle {
      void test_method() { 
        print("This is a  test method"); 
      } 
   
      void test_method1() { 
          print("This is a  test method1"); 
      }
    }

    void main() {
      var vehicle = new Vehicle();
      vehicle.test_method(); // This is a  test method
      vehicle.test_method1(); // This is a  test method1

      vehicle
        ..test_method()
        ..test_method1(); 
      // This is a  test method
      // This is a  test method1
    }
    ```

## Interface trong Dart

- Sử dụng từ khóa `implements` để thực hiện việc triển khai interface trong Dart.

- Ví dụ:

  ```dart
  abstract class Shape {
    void draw();
  }

  class Rectangle implements Shape {
    void draw() {
      print("Drawing a rectangle");
    }
  }
  ```
