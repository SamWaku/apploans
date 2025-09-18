import 'package:apploans/pages/Auth/sign_up/bloc/signup_events.dart';
import 'package:apploans/pages/Auth/sign_up/bloc/signup_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocs extends Bloc<SignUpEvent, SignUpStates>{
  SignUpBlocs() : super (SignUpStates()){
    on<UserNameEvent>(_userNameEvent);
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
    on<ConfirmPasswordEvent>(_confirmPasswordEvent);
  }

  void _userNameEvent(UserNameEvent event, Emitter<SignUpStates> emit){
    //print("${event.userName}");
    emit(state.copyWith(userName: event.userName));
  }

  void _emailEvent(EmailEvent event, Emitter<SignUpStates> emit){
    //print("${event.email}");
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignUpStates> emit){
    emit(state.copyWith(password: event.password));
  }

  void _confirmPasswordEvent(ConfirmPasswordEvent event, Emitter<SignUpStates> emit){
    emit(state.copyWith(confirmPassword: event.confirmPassword));
  }
}