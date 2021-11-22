import 'dart:developer';

abstract class CounterState {
  late final int results;
  CounterState({required this.results});
}

// class InitialState extends CounterState {
//   int? output;

//   InitialState({this.output});
// }

class ResultState extends CounterState {
  late final int result;
  ResultState({required this.result}) : super(results: result);
}
