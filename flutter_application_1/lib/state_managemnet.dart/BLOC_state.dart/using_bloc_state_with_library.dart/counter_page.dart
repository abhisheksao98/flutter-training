import 'package:flutter/material.dart';
//import 'package:flutter_application_1/state_managemnet.dart/BLOC_state.dart/counter_bloc_app.dart';
import 'package:flutter_application_1/state_managemnet.dart/BLOC_state.dart/using_bloc_state_with_library.dart/counter_cubit.dart';
import 'package:flutter_application_1/state_managemnet.dart/BLOC_state.dart/using_bloc_state_with_library.dart/counter_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterApp(),
    );
  }
}
