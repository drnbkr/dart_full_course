
void main(List<String> args) {
  final user = _User("hero", age: null);

  // if (user.age  != null) {
  //   if (user.age < 18) {

  //   }
  // }

  if ((user.age ?? 17) >= 18) {
    print("helo");
  }

  user
    ..name = "dfg"
    
    ..age = 3
    ..moneyType = "TR";

    user.name + user.name;
    print( user.name + user.name);
    
}

class _User {
  String name;
  int? age;
  dynamic moneyType;

  _User(this.name, {this.age});

  // String operator +(_User newUser) {
  //   return name + newUser.name;
  // }
}
