class Crypto {
  String name;
  String symbol;
  String imageUrl;
  num price;
  num change;
  num changePercentage;
  Crypto(
      {required this.name,
      required this.symbol,
      required this.imageUrl,
      required this.price,
      required this.change,
      required this.changePercentage});
  factory Crypto.fromJsom(Map<String, dynamic> json) {
    return Crypto(
      name: json['name'],
      symbol: json['symbol'],
      imageUrl: json['imageurl'],
      price: json['price'],
      change: json['change'],
      changePercentage: json['changePercentage'],
    );
  }
  List<Crypto> coinList = [];
}
