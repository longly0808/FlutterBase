import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studybloc2/event/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int>{
  CounterBloc(int initialState) : super(0);


  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch(event){

      case CounterEvent.increment:
       var newState = state +1;
       yield newState;
        break;
      case CounterEvent.decrement:
        var newState = state -1;
        yield newState;
        break;
    }
  }

}