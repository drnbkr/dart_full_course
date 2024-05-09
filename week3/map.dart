void main() {
  Map<String, int> users = {'heli': 20, 'roy': 30};

  print('${users["heli"]}');
  print('------------------');

  for (var element in users.keys) {
    print('${users[element]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  print('------------------');

  final Map<String, List<int>> poliBank = {
    'hori': [100, 200, 300],
  };
  poliBank['heli'] = [30, 40];
  poliBank['deli'] = [300];

  for (var element in poliBank.keys) {
    for (var money in poliBank[element]!) {
      if (money > 150) {
        print('yee');
        break;
      }
    }
  }
}
