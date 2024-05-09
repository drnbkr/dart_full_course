Future<void> main(List<String> args) async {
  print("a");

  // await Future.delayed(Duration(seconds: 2));

  // await Future.forEach([1, 2, 3, 4, 5], (element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print('işlem bitti $element');
  // });
  print("b");

  print('hello 1');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print("Hello 2");
  });
  print('hello 3');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print("Hello 4");
  });
}
