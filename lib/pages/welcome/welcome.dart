import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          width: 375.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                children: [
                  SizedBox(
                    width: 345.w,
                    height: 345.w,
                    child: Text(
                      "Image One"
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
