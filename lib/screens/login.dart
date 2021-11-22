import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise/models/bloc/counter_bloc.dart';
import 'package:practise/models/bloc/event.dart';
import 'package:practise/models/bloc/state.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    final _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocConsumer<CounterBloc, CounterState>(
          listener: (BuildContext context, state) {},
          builder: (BuildContext context, state) {
            if (state is ResultState) {
              return Text('${state.result}');
            }
            return Container();
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  counterBloc.add(IncrementEvent());
                },
                child: const Icon(Icons.add)),
            ElevatedButton(
                onPressed: () {
                  counterBloc.add(DecrementEvent());
                },
                child: const Icon(Icons.remove)),
            ElevatedButton(
                onPressed: () {
                  counterBloc.add(ResetEvent());
                },
                child: const Icon(Icons.restore)),
          ],
        )
      ],
    ));
  }
}
