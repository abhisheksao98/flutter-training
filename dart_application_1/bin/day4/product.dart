class Product {
  final String _ProductID;
  final String _PRoductName;
  int _price;

  Product(this._ProductID, this._PRoductName, this._price);

  String get Productid => _ProductID;
  String get ProductName => _PRoductName;
  int get price => _price;
  set price(int value) {
    //   if (value > 0 && value < _price) {
    //     _price = value;
    //   } else {
    //     throw Exception('new value cannot be greater rhhan previous one');
    //   }
    // }
    _price = value;
  }

  @override
  String toString() =>
      'Product id : $_ProductID\nProductname = $_PRoductName\nPrice = $_price';
}
