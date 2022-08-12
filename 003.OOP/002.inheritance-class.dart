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
