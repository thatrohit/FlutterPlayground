void main(List<String> arguments) {
  var obj = MyClass();
  obj.printClass();
}

class MyClass {
  int age = 4;
  String name = "Rohit";
  String printClass() {
    return "$name is $age years old";
  }

  MyClass();
}
