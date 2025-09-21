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
          toastInfo(msg: "Please enter email", context: context);
          return;
        }

        if (password.isEmpty) {
          toastInfo(msg: "Please enter password", context: context);
          return;
        }

        try {
          final cred = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );

          if (cred.user == null) {
            toastInfo(msg: "User not found", context: context);
            return;
          }

          if (!cred.user!.emailVerified) {
            toastInfo(msg: "User not verified", context: context);
            return;
          }

          var user = cred.user;
          if (user != null) {
            Navigator.of(context).pushNamed("home");
            toastInfo(msg: "Success", context: context);
            return;
          } else {
            toastInfo(msg: "User not found", context: context);
            return;
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            toastInfo(msg: "User not found", context: context);
            return;
          } else if (e.code == 'wrong-password') {
            toastInfo(msg: "Wrong password", context: context);
            return;
          } else {
            toastInfo(msg: "Authentication failed: ${e.message}", context: context);
            return;
          }
        }
      }
    } catch (e) {
      toastInfo(msg: "An error occurred: ${e.toString()}", context: context);
      return;
    }
  }
}