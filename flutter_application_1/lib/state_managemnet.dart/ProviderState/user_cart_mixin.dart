import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/counter.dart';
//import 'package:flutter_application_1/screen/product.dart';

import '../../product.dart';

class UserCart with ChangeNotifier {
  List<Product> _products = [];
  List<Product> get products => _products;
  int count = 0;

  void addProductTocart(Product product) {
    _products.add(product);
    debugPrint('Adding Product : ${product.productName}');
    notifyListeners();
  }

  void removeProductfromCart(Product product) {
    _products.remove(product);
    notifyListeners();
  }

  void AddCounter(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void SubCounter(Product product) {
    _products.remove(product);
    notifyListeners();
  }

  double get totalPrice =>
      products.fold(0, (total, currentProduct) => total + currentProduct.price);

  int _count = 1;
  int get Count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}
