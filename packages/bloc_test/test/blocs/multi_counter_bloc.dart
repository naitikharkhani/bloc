import 'package:bloc/bloc.dart';

import 'blocs.dart';

class MultiCounterBloc extends Bloc<CounterEvent, int> {
  MultiCounterBloc() : super(0) {
    on<CounterEvent>(_onEvent);
  }

  void _onEvent(CounterEvent event, Emit<int> emit) {
    switch (event) {
      case CounterEvent.increment:
        emit(state + 1);
        emit(state + 1);
        break;
    }
  }
}
