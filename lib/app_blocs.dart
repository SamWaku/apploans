import 'package:apploans/app_events.dart';
import 'package:apploans/app_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocs extends Bloc<AppEvents, AppStates>{
  AppBlocs(): super(InitStates());
}