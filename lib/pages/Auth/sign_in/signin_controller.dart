import 'package:apploans/pages/Auth/bloc/siginin_blocs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInController{
  final BuildContext context;

  const SignInController({ required this.context});

  void handleSignIn(String type){
    try{
      if(type == "email"){
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;

        if(emailAddress.isEmpty){
          //
        }

        if(password.isEmpty){

        }
      }
    } catch(e){
      print(e);
    }
  }
}