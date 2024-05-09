// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final model = CarModel(category: CarModels.bmw, name: "bmw x5", money: 123, isSecondHand: false);

  final carItems = [
    model,
    CarModel(category: CarModels.bmw, name: "bmw x5", money: 123, isSecondHand: false),
    CarModel(category: CarModels.toyota, name: "toyota x5", money: 34),
    CarModel(category: CarModels.yamaha, name: "yamaha x5", money: 56, isSecondHand: false),
    CarModel(category: CarModels.bmw, name: "bmw x7", money: 55, isSecondHand: false),
    CarModel(category: CarModels.toyota, name: "toyota x7", money: 45),
  ];

  final resultCount = carItems.where((element) => element.isSecondHand == true).length;
  final newCar = CarModel(category: CarModels.toyota, name: "toyota x7", money: 45);
  final isHaveCar = carItems.contains(newCar);

  final resultBmwMore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  }).join("****");

  print(resultCount);
  print(isHaveCar);
  print(resultBmwMore20);

  final carNames = carItems.map((e) => e.name).join(', ');
  print(carNames);

try {
  final mercedesCar = carItems.singleWhere((element) => element.category == CarModels.mercedes);
   print(mercedesCar);
} catch (e) {
   print("no more");
}finally{
  print("no more fianl");
}

 
}

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;

  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });

  @override
  bool operator ==(covariant CarModel other) {
    if (identical(this, other)) return true;

    return other.category == category && other.name == name && other.money == money && other.city == city && other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^ name.hashCode ^ money.hashCode ^ city.hashCode ^ isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name -  $money';
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }
