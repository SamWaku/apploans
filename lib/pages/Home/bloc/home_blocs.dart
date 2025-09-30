import 'package:apploans/pages/Home/bloc/home_events.dart';
import 'package:apploans/pages/Home/bloc/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBlocs extends Bloc<HomeEvents,HomeStates>{
  HomeBlocs(): super(HomeStates()){
    on<HomeEvents>((event, emit){
      emit(HomeStates(index: state.index));
    });
  }
}