import 'model/user_model.dart';

void main() {
  final int customerMoney = 50;
  final String customerName = 'Voli';
  final int customerAge = 13;

  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 10);
  } else {
    print(0 + 10);
  }

  User newUser = User("holi", 24, id: "123");

  print(newUser.isEmptyId);
}
