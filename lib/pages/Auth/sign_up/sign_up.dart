import 'package:apploans/pages/Auth/sign_in/widgets/sign_in_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Sign Up"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildThirdPartyLogin(context),
            Center(child: reusableText("or login with you email")),
            Container(
              margin: EdgeInsets.only(top: 36.h),
              padding: EdgeInsets.only(left: 25.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  reusableText("Email"),
                  buildTextField("email", "Email", "user", "Enter your email",
                          (value){

                      }
                  ),
                  reusableText("Password"),
                  buildTextField("email", "Password", "lock", "Enter your password",
                          (value){

                      }),
                  forgotPasswordText(),
                  buildLoginRegButton("Login", "Login",(){

                  }),
                  buildLoginRegButton("Register", "Register", (){

                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
