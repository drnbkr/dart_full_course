void main() {
  Student student = Student("name", "12");
  student.saySomething;
}

abstract class IStudent {
  final String name;
  final String age;

  void get saySomething => print(age);

  IStudent(this.name, this.age);
}

class Student implements IStudent {
  final String name;
  final String age;

  Student(this.name, this.age);

  @override
  // TODO: implement saySomething
  void get saySomething => print(age);
}

class Student2 implements IStudent {
  final String name;
  final String age;
  @override
  void get saySomething => print(name);
  Student2(this.name, this.age);
}
