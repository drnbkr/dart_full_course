void main(List<String> args) {
  String userName = "a";

  if (userName.length >2) {
    print("a");
  }else{
    throw UserNameException();
  }
}


class UserNameException implements Exception{
  @override
  String toString() {
    // TODO: implement toString
    return "username length must be longer than 2 chars";
  }
}