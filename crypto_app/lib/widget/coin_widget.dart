import 'package:flutter/material.dart';

class CryptoHome extends StatefulWidget {
  String name;
  String symbol;
  String imageUrl;
  num price;
  num change;
  num changePercentage;
  CryptoHome(
      {Key? key,
      required this.name,
      required this.symbol,
      required this.imageUrl,
      required this.price,
      required this.change,
      required this.changePercentage})
      : super(key: key);

  @override
  State<CryptoHome> createState() => _CryptoHomeState();
}

class _CryptoHomeState extends State<CryptoHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        color: Colors.grey[600],
        decoration: BoxDecoration(shape: BoxShape.rectangle, boxShadow: [
          BoxShadow(
              color: Colors.black,
              offset: Offset(4, 4),
              blurRadius: 10,
              spreadRadius: 2),
          BoxShadow(color: Colors.red, offset: Offset(-4, -4))
        ]),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.network(widget.imageUrl),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    widget.name,
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Text(widget.symbol,
                    style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.price.toDouble().toString(),
                ),
                Text(
                  widget.change.toDouble() < 0
                      ? widget.change.toDouble().toString()
                      : '+${widget.change.toDouble().toString()}',
                  style: TextStyle(
                      color: widget.change.toDouble() < 0
                          ? Colors.red
                          : Colors.greenAccent,
                      fontSize: 16),
                ),
                Text(
                  widget.changePercentage.toDouble() < 0
                      ? widget.changePercentage.toDouble().toString() + '%'
                      : '+${widget.changePercentage.toDouble().toString()}%',
                  style: TextStyle(
                      color: widget.changePercentage.toDouble() < 0
                          ? Colors.red
                          : Colors.green),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
