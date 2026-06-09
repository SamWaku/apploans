import 'package:apploans/common/utils/http_util.dart';
import 'package:apploans/common/values/constants.dart';
import 'package:apploans/global.dart';
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

  Future<void> handleClientRegistration() async{
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

    if (password != confirmPassword) {
      toastInfo(context: context, msg: "Password and confirm password are not the same");
      return;
    }

    try{
      // Split username into first and last name as requested by the API
      List<String> nameParts = username.trim().split(' ');
      String firstName = nameParts[0];
      String lastName = nameParts.length > 1 ? nameParts.sublist(1).join(' ') : "";

      var data = {
        "email": email,
        "firstName": firstName,
        "lastName": lastName,
        "phoneNumber": "", // Defaulting to empty as it's not in the state
        "password": password,
      };

      var response = await HttpUtil().post('/auth/signup', data: data);

      if (!context.mounted) return;

      if (response != null) {
        String message = response['message'] ?? "Signup successful";
        toastInfo(context: context, msg: message);

        if (response['accessToken'] != null) {
          await Global.storageService.setString(
            AppConstants.STORAGE_USER_TOKEN_KEY,
            response['accessToken'],
          );
        }

        Navigator.of(context).pop();
      }
    } catch (e) {
      if (!context.mounted) return;
      toastInfo(context: context, msg: "Registration failed");
    }
  }
}
