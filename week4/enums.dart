void main() {
  final customerMouse = Mouses.a4;

  print(customerMouse.index);
  print(customerMouse.name);

  switch (customerMouse) {
    case Mouses.magic:
    case Mouses.apple:
    case Mouses.logitech:
    case Mouses.a4:
      
      break;
    default:
  }
}

enum Mouses {
  magic,
  apple,
  logitech,
  a4,
}
