// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {}

class UserManager {
  String name;
  UserManager({
    required this.name,

  });
  void changeUserName(String name) {
    this.name = name;
  
  }
}
