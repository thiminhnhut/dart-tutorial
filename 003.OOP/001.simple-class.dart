void main() {
  var car = new Car("E1001");
  car.display();

  // var car2 = new Car.namedConst("E1002");
  // car2.display();

  car.car_engine = "V8";
  print(car.car_engine);
}

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
