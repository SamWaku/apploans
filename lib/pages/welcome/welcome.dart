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
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 34.h),
          width: 375.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                children: [
                  _page()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _page(){
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              width: 345.w,
              height: 345.w,
              child: Text("Image One"),
            ),
            Container(
              child: Text(
                "Need a loan?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              width: 375.w,
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: Text(
                "Why stress about your financial needs. Get a loan with us.",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 100.h,
                left: 25.w,
                right: 25.w,
              ),
              width: 375.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(15.w)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
