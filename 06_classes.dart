class Person {
  final String name;
  int age;
  late int _dateOfBirth;
  final String phone;
  static final String address = "Ahlone";

  Person({required this.name, required this.phone, required this.age}) {
    _dateOfBirth = DateTime.now().year - age;
  }

  void setAge(int value) {
    age = value;
    _dateOfBirth = DateTime.now().year - value;
  }

  int getDOB() {
    return _dateOfBirth;
  }

  static void myInfo() {
    print("I'm living in $address");
  }
}

void main() {
  print(Person.address);
  Person.myInfo();
}
