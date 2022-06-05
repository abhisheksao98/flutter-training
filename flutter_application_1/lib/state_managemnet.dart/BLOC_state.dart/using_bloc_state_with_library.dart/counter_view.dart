import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_managemnet.dart/BLOC_state.dart/using_bloc_state_with_library.dart/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Counter app'),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: ((context, state) {
            return Text(
              'You have pressed $state times',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30.0,
              ),
            );
          }),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().dcrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
