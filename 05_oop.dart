import '06_classes.dart';

void main() {
  // final car = Car();
  // car.setType = "toyota";
  // car.setManufacture = "Japan";

  // car.show();

  final person = Person(name: "Jhon", phone: "09888989", age: 20);

  print(person.name);
  print(person.getDOB());
}

class Car {
  late String _type;
  late String _manufacture;
  int? speed;

  set setType(String value) {
    _type = value;
  }

  get getType {
    return _type;
  }

  set setManufacture(String value) {
    _manufacture = value;
  }

  get getManufacture {
    return _manufacture;
  }

  void show() {
    print(
        "This $_type car is manufactured by $_manufacture ${speed != null ? "and it can drive at $speed" : ""}");
  }
}
