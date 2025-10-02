import 'package:flutter_bloc/flutter_bloc.dart';

import 'application_events.dart';
import 'application_states.dart';

class ApplicationBlocs extends Bloc<ApplicationEvents,ApplicationStates>{
  ApplicationBlocs(): super(const ApplicationStates()){
    on<TriggerHomeEvent>((event, emit){
      emit(ApplicationStates(index: event.index));
    });
  }
}