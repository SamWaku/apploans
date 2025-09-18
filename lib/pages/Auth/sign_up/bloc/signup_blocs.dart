import 'package:apploans/pages/Auth/sign_up/bloc/signup_events.dart';
import 'package:apploans/pages/Auth/sign_up/bloc/signup_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocs extends Bloc<SignUpEvent, SignUpStates>{
  SignUpBlocs() : super (SignUpStates()){
    on<UserNameEvent>(_userNameEvent);
  }

  void _userNameEvent(UserNameEvent event, Emitter<SignUpStates> emit){
    emit(state.copyWith(userName: event.userName));
  }

  void _emailEvent(EmailEvent event, Emitter<SignUpStates> emit){
    emit(state.copyWith(userName: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignUpStates> emit){
    emit(state.copyWith(userName: event.password));
  }

  void _confirmPasswordEvent(ConfirmPasswordEvent event, Emitter<SignUpStates> emit){
    emit(state.copyWith(userName: event.confirmPassword));
  }
}