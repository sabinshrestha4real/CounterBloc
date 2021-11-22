import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise/models/bloc/counter_bloc.dart';
import 'package:practise/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => CounterBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CellApp Innovation',
        theme: ThemeData(
          fontFamily: 'VarelaRound',
          primaryColor: const Color(0xff15dddd),
          // primarySwatch: Colors.blue,
        ),
        onGenerateRoute: RoutePage.generateRoute,
        initialRoute: RoutePage.login,
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
