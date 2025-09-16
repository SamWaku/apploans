import 'package:apploans/pages/Auth/bloc/signin_events.dart';
import 'package:apploans/pages/Auth/bloc/signin_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() :super(const SignInState()) {
    on<EmailEvent>(_emailEvent);

    on<PasswordEvent>(_passwordEvent);
  }

  //separate handler from on method
  void _emailEvent(EmailEvent event, Emitter<SignInState> emit){
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit){
    emit(state.copyWith(password: event.password));
  }
}