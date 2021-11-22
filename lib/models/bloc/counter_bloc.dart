import 'package:flutter/cupertino.dart';
import 'package:practise/models/bloc/event.dart';
import 'package:practise/models/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(ResultState(result: 0)) {
    on<IncrementEvent>(
        (event, emit) => emit(ResultState(result: state.results + 1)));
    on<DecrementEvent>((event, emit) => emit(ResultState(
        result: state.results == 0 ? state.results = 0 : state.results - 1)));
    on<ResetEvent>((event, emit) => emit(ResultState(result: 0)));
  }
}
