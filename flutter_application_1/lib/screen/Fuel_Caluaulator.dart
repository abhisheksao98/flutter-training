import 'dart:html';

import 'package:flutter/material.dart';

class FuelCalculator extends StatefulWidget {
  const FuelCalculator({Key? key}) : super(key: key);

  @override
  State<FuelCalculator> createState() => _FuelCalculatorState();
}

class _FuelCalculatorState extends State<FuelCalculator> {
  final _Currencies = ['Rupees', 'Dollars', 'Euros', 'Deram'];
  String _Currency = 'Rupees';
  String result = '';
  var distanceController = TextEditingController();
  var unitController = TextEditingController();
  var priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.directions_car),
          title: const Text('Fuel Calculator'),
        ),
        body: Container(
            color: Colors.deepOrange,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: distanceController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Entrt the distance',
                      hintText: 'e.g 17',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: unitController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Average of your vehicle',
                        hintText: 'e.g 17',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: priceController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Price of fuel',
                            hintText: '110',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6.0)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: DropdownButton(
                        value: _Currency,
                        items: _Currencies.map((String Currency) {
                          return DropdownMenuItem<String>(
                              child: Text(Currency), value: Currency);
                        }).toList(),
                        onChanged: (String? value) {
                          _onDropmenuitem(value);
                        },
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Calculate();
                          },
                          child: const Text('Calculate'),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            _clear();
                          },
                          child: const Text('Clear'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    result,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  ),
                )
              ],
            )));
  }

  void _onDropmenuitem(String? value) {
    setState(() {
      _Currency = value!;
    });
  }

  void Calculate() {
    double distance = double.parse(distanceController.text);
    double unit = double.parse(unitController.text);
    double price = double.parse(priceController.text);

    double totalcost = (distance / unit) * price;

    setState(() {
      result =
          'Total Cost of the Trip : \n${totalcost.toStringAsFixed(2)} in $_Currency';
    });
  }

  void _clear() {
    distanceController.text = '';
    unitController.text = '';
    priceController.text = '';

    setState(() {
      result = '';
      _Currency = 'Rupees';
    });
  }
}
