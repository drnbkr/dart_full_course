class User {
  //spects
  final String name;
  int _money;

  int get money => _money;

  set money(int value) {
    if (money < 0) {
      return;
    }
    _money = value;
  }

  final int? age;
  final String? city;
  late final String userCode;
  late final String _id;

  User(this.name, this._money, {required String id, this.age, this.city}) {
    userCode = (city ?? 'ist') + name;
    _id = id;
  }

  bool get isEmptyId => _id.isEmpty;
}