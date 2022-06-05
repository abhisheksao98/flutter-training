import 'product.dart';

void main() {
  var p1 = Product('TV', 'LG Tv', 72000);
  var p2 = Product('washing Macine', 'LG Washing Machine', 5500);

  p1.price = 0;
  print(p1);
  print('---------------------------------');
  print(p2);
}
