void main() {
  final int money1 = 101;
  final int money2 = 200;

  if (money1 > 100) {
    print("welco");
  }

  List<int> moneys = [1000, 300, 500, 200];
  moneys.sort();

  List<double> generatedList = List.generate(100, (index)=> index + 5);
  print('asdf   :  ${moneys[0]}');
  print(generatedList);


  for (var i = 0; i < generatedList.length; i++) {
    print('money:  ${generatedList[i]}');
  }


}
