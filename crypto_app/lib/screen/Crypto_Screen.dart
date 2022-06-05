import 'dart:async';
import 'dart:convert';
// import 'dart:ffi';

import 'package:crypto_app/model/crypto_model.dart';
import 'package:crypto_app/widget/coin_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CryptomainScreen extends StatefulWidget {
  const CryptomainScreen({Key? key}) : super(key: key);

  @override
  State<CryptomainScreen> createState() => _CryptomainScreenState();
}

class _CryptomainScreenState extends State<CryptomainScreen> {
  List<Crypto> coinList = [];
  Future<List> getcoindetails() async {
    final response = await http.get(
      Uri.parse(
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc'),
    );
    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.isNotEmpty) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(Crypto.fromJsom(map));
          }
        }
        setState(() {
          coinList;
        });
      }
      return coinList;
    } else {
      throw Exception('Please check internet');
    }
  }

  @override
  void initState() {
    getcoindetails();
    Timer.periodic(Duration(seconds: 10), (timer) => getcoindetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[300],
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text(
          'Cypto Coins Listing',
          style: TextStyle(
              color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: coinList.length,
        itemBuilder: ((context, index) {
          return CryptoHome(
            name: coinList[index].name,
            symbol: coinList[index].symbol,
            imageUrl: coinList[index].imageUrl,
            price: coinList[index].price.toDouble(),
            change: coinList[index].change.toDouble(),
            changePercentage: coinList[index].changePercentage.toDouble(),
          );
        }),
      ),
    );
  }
}
