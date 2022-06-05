enum Tradingtype { Stocks, Crypto, BinaryOption }

abstract class Trading {
  get volatile;
  factory Trading(type) {
    // if(type=='Stocks') return Stocks('Low');
    // if(type=='Crypto') return Stocks('high');
    // else
    // return BinaryOption('risk');
    switch (type) {
      case Tradingtype.Stocks:
        return Stocks('low');
      case Tradingtype.Crypto:
        return Crypto('high');

      case Tradingtype.BinaryOption:
        return BinaryOption('Risk');
      default:
        return Stocks('Low');
    }
  }
  String toString() => '$volatile';
}

class Stocks implements Trading {
  String volatility;
  Stocks(this.volatility);
  @override
  get volatile => volatility;
}

class Crypto implements Trading {
  String Volatility;
  Crypto(this.Volatility);
  @override
  get volatile => Volatility;
}

class BinaryOption implements Trading {
  String volatility;
  BinaryOption(this.volatility);
  @override
  get volatile => volatility;
}

void main() {
  var a = Trading(Tradingtype.Stocks);
  var b = Trading(Tradingtype.Crypto);
  var c = Trading(Tradingtype.BinaryOption);
  print('Stocks volatilty is ${a.volatile}');
  print('Crypto volatilty is ${b.volatile}');
  print('Binary option volatilty is ${c.volatile}');
}
