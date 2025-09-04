import 'package:apploans/pages/Auth/sign_in/widgets/sign_in_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildThirdPartyLogin(context),
            reusableText("or login with you email")
          ],
        ),
      ),
    );
  }
}

