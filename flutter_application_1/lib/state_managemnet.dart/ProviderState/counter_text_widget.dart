import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_managemnet.dart/ProviderState/provider_mixin.dart';
import 'package:provider/provider.dart';

class CounterText extends StatelessWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().count}',
      style: const TextStyle(fontSize: 30.0),
    );
  }
}
