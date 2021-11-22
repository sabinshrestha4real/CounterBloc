import 'dart:developer';

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {
  // late final int counter;
  // IncrementEvent({required counter});
}

class DecrementEvent extends CounterEvent {
  // late final int counter;
  // DecrementEvent({required counter});
}

class ResetEvent extends CounterEvent {
  // late final int counter;
  // ResetEvent({required counter});
}
