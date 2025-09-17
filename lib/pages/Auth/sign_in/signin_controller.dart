import 'package:apploans/pages/Auth/bloc/siginin_blocs.dart';
import 'package:apploans/utils/flutter_toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInController {
  final BuildContext context;

  const SignInController({required this.context});

  Future<void> handleSignIn(String type) async {
    try {
      if (type == "email") {
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;

        if (emailAddress.isEmpty) {
          toastInfo(msg: "Please enter email");
        }

        if (password.isEmpty) {
          toastInfo(msg: "Please enter password");
        }

        try {
          final cred = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );

          if (cred.user == null) {
            toastInfo(msg: "User not found");
          }

          if (!cred.user!.emailVerified) {
            toastInfo(msg: "User not verified");
          }

          var user = cred.user;
          if (user != null) {
            toastInfo(msg: "Success");
          } else {
            toastInfo(msg: "User not found");
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            toastInfo(msg: e.toString());
          } else if (e.code == 'wrong-password') {
            toastInfo(msg: e.toString());
          }
        }
      }
    } catch (e) {
      toastInfo(msg: e.toString());
    }
  }
}
