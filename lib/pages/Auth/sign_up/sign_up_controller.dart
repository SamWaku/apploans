import 'package:apploans/pages/Auth/sign_up/bloc/signup_blocs.dart';
import 'package:apploans/pages/Auth/sign_up/bloc/signup_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpController{
 final BuildContext context;
 const SignUpController(this.context);

 void handleEmailSignUp(){
   var state = context.read<SignUpBlocs>().state;
 }
}