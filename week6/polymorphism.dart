void main() {
  IUser user = Turk();

  user = Eng();
  user = Ger();
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => "voli";

  @override
  void sayName() {
    print('merhaba $name');
  }
}

class Eng implements IUser {
  @override
  String get name => "poli";

  @override
  void sayName() {
    print('Hello \' $name');
  }
}

class Ger implements IUser{
 

  @override
  String get name => "poli";

  @override
  void sayName() {
    print('halloo \' $name');
  }
}
