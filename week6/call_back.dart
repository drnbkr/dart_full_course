void main(List<String> args) {
  User user = User(money: 5);

  user.calculateMoney((int result) {
    print(user.money);
    return result + 5;
  });
}

class User {
  int money;
  User({
    required this.money,
  });

  void calculateMoney(int Function(int data) onComplete) {
    money += 5;
    onComplete(money);
  }
}
