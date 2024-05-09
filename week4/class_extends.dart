void main() {
  User user = User("voli", 15);
  user.sayMoneyWithCompanyName();

  BankUser bankUser = BankUser("cebi", 15, 4534);
  bankUser.bankSpecialLogic();

  SpecialUser specialUser = SpecialUser("süpi", 45, 4556, 0.2);
  specialUser.bankSpecialLogic();
  specialUser.sayMoneyWithCompanyName();
  specialUser.calculateMoney;
 
}

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print("$name - $money  paranız vardır ");
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);
  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends BankUser {
  late final double _discount;

  SpecialUser(String name, int money, int bankingCode, double discount) : super(name, money, bankingCode) {
    _discount = discount;
  }

  void get calculateMoney => print(money * _discount);
}
