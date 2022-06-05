import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_managemnet.dart/ProviderState/counter_text_widget.dart';
import 'package:flutter_application_1/state_managemnet.dart/ProviderState/provider_mixin.dart';
import 'package:provider/provider.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Providerr Counter app'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Yo have clicked'),
          SizedBox(
            height: 10,
          ),
          CounterText(),
          SizedBox(
            height: 10,
          ),
          Text('Times'),
        ],
      )),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        FloatingActionButton(
          onPressed: () => context.read<Counter>().increment(),
          child: const Icon(Icons.add),
        ),
        SizedBox(
          width: 20.0,
        ),
        FloatingActionButton(
          onPressed: () => context.read<Counter>().decrement(),
          child: const Icon(Icons.remove),
        )
      ]),
    );
  }
}
