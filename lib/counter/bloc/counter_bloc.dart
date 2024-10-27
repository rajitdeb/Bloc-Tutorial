import 'package:bloc_tutorial/counter/bloc/counter_event.dart';
import 'package:bloc_tutorial/counter/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Actual Bloc Logic that demonstrates -
/// What would happen when certain even is trigger
/// Basically the Bloc Machine takes care of the appropriate state
/// that has to be passed based on the event triggered
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<CounterIncrementPressed>((event, emit) {
      emit(CounterState(count: state.count + 1)); // Increment the counter
    });

    on<CounterDecrementPressed>((event, emit) {
      emit(CounterState(count: state.count - 1)); // Decrement the counter
    });

    on<CounterResetPressed>((event, emit) {
      emit(CounterState(count: 0));
    });
  }
}
