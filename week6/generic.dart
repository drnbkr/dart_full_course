// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final user = User(data: "a");
}

class User<T> {
  T data;
  User({
    required this.data,
  });
}
