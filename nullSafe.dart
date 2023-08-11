void main() {
  printStr('1111');
  printStr(null);

  var o1 = Object();
  var o2 = Object();
  print(o1 == o2);
  print(identical(o1, o2));

  var o3 = const Object();
  var o4 = const Object();
  print(identical(o3, o4));

  var person = Person(1, 'Jack');
  print(person.toString());
}

class Person {
  int age;
  String name;

  Person(this.age, this.name) {}

  @override
  String toString() {
    return 'Person{age: $age, name: $name}';
  }
}

void printStr(String? string) {
  try {
    print(string!.length);
  } catch (e) {
    print('str is null');
  }
}
