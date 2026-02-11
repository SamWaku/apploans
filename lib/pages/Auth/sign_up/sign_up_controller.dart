import 'package:apploans/common/values/constants.dart';
import 'package:apploans/pages/Auth/sign_up/bloc/signup_blocs.dart';
import 'package:apploans/pages/Auth/sign_up/bloc/signup_states.dart';
import 'package:apploans/utils/flutter_toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpController {
  final BuildContext context;
  const SignUpController({ required this.context});

  Future<void> handleEmailSignUp() async {
    var state = context.read<SignUpBlocs>().state;
    String username = state.userName;
    String email = state.email;
    String password = state.password;
    String confirmPassword = state.confirmPassword;

    if (username.isEmpty) {
      toastInfo(context: context, msg: "User name is empty");
      return;
    }

    if (email.isEmpty) {
      toastInfo(context: context, msg: "Email is empty");
      return;
    }

    if (password.isEmpty) {
      toastInfo(context: context, msg: "Password is empty");
      return;
    }

    if (confirmPassword.isEmpty) {
      toastInfo(context: context, msg: "Please confirm you password");
      return;
    }

    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if(credential.user != null){
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(username);
        String photoUrl = "https://lh3.googleusercontent.com/a/ACg8ocLS-W_jxpj0AWc5THfbvMr5mtMiSuc8tsDk9gUT3tycUMwcofDE=s288-c-no";
        await credential.user?.updateProfile(displayName: username, photoURL: photoUrl);
        print("photoUrl: ${photoUrl}");
        toastInfo(context: context, msg: "Email has been sent to email to verify");
        Navigator.of(context).pop();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastInfo(context: context, msg: "weak password");
      }
      if (e.code == 'email-already-in-use') {
        toastInfo(context: context, msg: "Email already in user");
      }

      if (e.code == 'email-already-in-use') {
        toastInfo(context: context, msg: "Email already in user");
      }

      if (e.code == 'invalid-email') {
        toastInfo(context: context, msg: "Email is not valid");
      }
    }
  }
}
