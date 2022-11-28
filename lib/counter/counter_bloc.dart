import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(initialstate()) {
    on<increment>((event, emit) {
      final currentstatevalue = state.count;
      final incrementedvalue = currentstatevalue + 1;
      return emit(CounterState(count: incrementedvalue));
    });
    on<decrement>((event, emit) {
      final currentstatevalue = state.count;
      final decrementedvalue = currentstatevalue - 1;
      return emit(CounterState(count: decrementedvalue));
    });
  }
}
