import 'package:apploans/pages/Auth/sign_in/widgets/sign_in_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildThirdPartyLogin(context),
            Center(child: reusableText("or login with you email")),
            Container(
              margin: EdgeInsets.only(top: 40.h),
              padding: EdgeInsets.only(left: 25.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  reusableText("Email"),
                  buildTextField("email", "Email", "user", "Enter your email")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

