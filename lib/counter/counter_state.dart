part of 'counter_bloc.dart';

class CounterState {
  final int count;
  CounterState({required this.count});
}

class initialstate extends CounterState {
  initialstate() : super(count: 0);
}
