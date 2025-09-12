import 'package:apploans/pages/Auth/bloc/signin_events.dart';
import 'package:apploans/pages/Auth/bloc/signin_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() :super(const SignInState()) {
    on<EmailEvent>((event, state) {
      //what happens before and after a state
    });

    on<PasswordEvent>((event, state){
      //what happens before and after a state
    });
  }
}