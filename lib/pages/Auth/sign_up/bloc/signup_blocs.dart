import 'package:apploans/pages/Auth/sign_up/bloc/signup_events.dart';
import 'package:apploans/pages/Auth/sign_up/bloc/signup_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocs extends Bloc<SignUpEvent, SignUpStates>{
  SignUpBlocs() : super (SignUpStates(){
    on<UserNameEvent>(_userNameEvent);
  });

  void _userNameEvent(UserNameEvent event, Emitter<SignUpStates> emit){

  }
}