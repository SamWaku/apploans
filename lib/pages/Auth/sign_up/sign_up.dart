import 'package:apploans/pages/Auth/sign_in/widgets/sign_in_widgets.dart';
import 'package:apploans/pages/Auth/sign_up/bloc/signup_blocs.dart';
import 'package:apploans/pages/Auth/sign_up/bloc/signup_events.dart';
import 'package:apploans/pages/Auth/sign_up/bloc/signup_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBlocs, SignUpStates>(
      builder: (context, state) {
        return Scaffold(
          appBar: buildAppBar("Sign Up"),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: reusableText("Create your account ")),
                Container(
                  margin: EdgeInsets.only(top: 26.h),
                  padding: EdgeInsets.only(left: 25.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("Username"),
                      buildTextField(
                        "username",
                        "Username",
                        "user",
                        "Enter your username",
                        (value) {
                          context.read<SignUpBlocs>().add(UserNameEvent(value));
                        },
                      ),
                      reusableText("Email"),
                      buildTextField(
                        "email",
                        "Email",
                        "user",
                        "Enter your email",
                        (value) {
                          context.read<SignUpBlocs>().add(EmailEvent(value));
                        },
                      ),
                      reusableText("Password"),
                      buildTextField(
                        "password",
                        "Password",
                        "lock",
                        "Enter your password",
                        (value) {
                          context.read<SignUpBlocs>().add(PasswordEvent(value));
                        },
                      ),
                      reusableText("Confirm Password"),
                      buildTextField(
                        "password",
                        "Password",
                        "lock",
                        "Confirm your password",
                        (value) {
                          context.read<SignUpBlocs>().add(ConfirmPasswordEvent(value));
                        },
                      ),

                      buildLoginRegButton("Sign Up", "Register", () {}),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  child: Center(child: reusableText("or sign up with any")),
                ),
                buildThirdPartyLogin(context),
              ],
            ),
          ),
        );
      },
    );
  }
}
