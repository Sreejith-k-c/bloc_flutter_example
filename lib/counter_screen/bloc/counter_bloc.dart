import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<OnIncrement>((event, emit) {
      emit(CounterState(count: ++state.count));
    });
    on<OnDecrement>((event, emit) {
      emit(CounterState(count: --state.count));
    });
  }
}
