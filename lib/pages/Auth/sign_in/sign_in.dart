import 'package:apploans/pages/Auth/bloc/siginin_blocs.dart';
import 'package:apploans/pages/Auth/bloc/signin_events.dart';
import 'package:apploans/pages/Auth/bloc/signin_states.dart';
import 'package:apploans/pages/Auth/sign_in/signin_controller.dart';
import 'package:apploans/pages/Auth/sign_in/widgets/sign_in_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(builder: (context, state){
      return Scaffold(
        appBar: buildAppBar("Login"),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
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
                              context.read<SignInBloc>().add(EmailEvent(value));
                            }
                    ),
                    reusableText("Password"),
                    buildTextField("email", "Password", "lock", "Enter your password",
                            (value){
                          context.read<SignInBloc>().add(PasswordEvent(value));
                        }),
                    forgotPasswordText(),
                    buildLoginRegButton("Login", "Login",(){
                      SignInController(context: context).handleSignIn("email");
                    }),
                    buildLoginRegButton("Sign Up", "Register", (){
                      Navigator.of(context).pushNamed("/sign_up");
                    }),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}