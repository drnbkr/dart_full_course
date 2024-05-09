import 'model/product_config_model.dart';

void main(List<String> args) {
  calculateMoney();

  final String name = Product.componyName;
  print(name);

  final user1 = User("uso1", "phoni");
  final newProduct = Product(user1.product);
  final newProduct2 = Product.fromUser(user1);
  print(newProduct2.name);

  print(ProductConfig.instance.apiKey);
}

void calculateMoney() {
  if (Product.money > 5) {
    Product.increrementMoney(5);
    print(Product.money);
  }
}

class Product {
  static int money = 6;
  String name;
  Product(this.name);

  Product.veli({this.name = "voli"});

  factory Product.fromUser(User user) {
    return Product(user.product);
  }

  static const componyName = "poli bank";
  static void increrementMoney(int newMoney) {
    money += newMoney;
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
