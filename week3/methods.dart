void main() {
  final int userMoney = 30;
  final int userMoney2 = 6;

  // if (userMoney > 0) {
  //   print("yeo");
  // } else {
  //   print("neo");
  // }

  controlUserMoney(userMoney, 0);
  controlUserMoney(userMoney2, 5);

  // if (userMoney2 > 0) {
  //   print("yeo");
  // } else {
  //   print("neo");
  // }

  final result = convertToStandartDolar(userMoney: userMoney, dolorindex: 3);
  print(result);
}

void controlUserMoney(int money, int minumumValue) {
  if (money > minumumValue) {
    print("yeo");
  } else {
    print("neo");
  }
}

int convertToStandartDolar({required int userMoney, int dolorindex = 14}) {
  return userMoney ~/ dolorindex;
}
