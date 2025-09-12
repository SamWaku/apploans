import 'package:apploans/pages/Auth/bloc/signin_events.dart';
import 'package:apploans/pages/Auth/bloc/signin_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() :super(const SignInState()) {
    on<EmailEvent>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<PasswordEvent>((event, emit){
      emit(state.copyWith(password: event.password));
    });
  }

  void _emailEvent(EmailEvent event, Emitter<SignInState> emit){
    emit(state.copyWith(email: event.email));
  }
}