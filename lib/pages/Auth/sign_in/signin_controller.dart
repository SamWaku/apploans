import 'package:apploans/pages/Auth/bloc/siginin_blocs.dart';
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
          //
        }

        if (password.isEmpty) {}

        try {
          final cred = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );

          if (cred.user == null) {
            print("user not found");
          }

          if (!cred.user!.emailVerified) {
            print("user not verified");
          }

          var user = cred.user;
          if (user != null) {
            print("user exists");
          } else {
            print("user doesn;t exist");
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            print("user with that email not found");
          } else if (e.code == 'wrong-password') {
            print("user password does not exist");
          }
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
