import 'package:apploans/pages/Home/bloc/home_page_events.dart';
import 'package:apploans/pages/Home/bloc/home_page_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBlocs extends Bloc<HomePageEvents, HomePageStates>{
  HomePageBlocs() : super (HomePageStates()){
    on<HomePageDots>(_homePageDots);
  }

  void _homePageDots(HomePageDots events, Emitter<HomePageStates> emit){
    emit(state.copyWith(index: events.index));
  }
}