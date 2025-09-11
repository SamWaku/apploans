import 'package:apploans/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Text("Login", style: TextStyle(color: AppColors.primaryText)),
    centerTitle: true,
  );
}

//context needed for accessing bloc
Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _reusableIcons("google"),
        _reusableIcons("apple"),
        _reusableIcons("facebook"),
      ],
    ),
  );
}

Widget _reusableIcons(String iconName) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40.w,
      height: 40.w,
      child: Image.asset("assets/icons/$iconName.png"),
    ),
  );
}

Widget reusableText(String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(
      text,
      style: TextStyle(
        color: AppColors.primarySecondaryElementText,
        fontWeight: FontWeight.normal,
        fontSize: 14.sp,
      ),
    ),
  );
}

Widget buildTextField(
  String text,
  String textType,
  String iconName,
  String hintText,
) {
  return Container(
    width: 300.w,
    height: 50.h,
    margin: EdgeInsets.only(bottom: 20.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15.w)),
      border: Border.all(color: Colors.black),
    ),
    child: Row(
      children: [
        Container(
          width: 16.w,
          height: 16.w,
          margin: EdgeInsets.only(left: 10.h),
          child: Image.asset("assets/icons/$iconName.png"),
        ),
        Container(
          padding: EdgeInsets.only(top: 4.h),
          width: 270.w,
          height: 50.h,
          child: TextField(
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6)),
            ),
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Avenir",
              fontWeight: FontWeight.normal,
              fontSize: 12.sp,
            ),
            autocorrect: false,
            obscureText: textType == "Password" ? true : false,
          ),
        ),
      ],
    ),
  );
}

Widget forgotPasswordText() {
  return Container(
    width: 260.w,
    height: 50.h,
    child: GestureDetector(
      onTap: () {},
      child: Text("forgot password?", style: TextStyle(color: Colors.black)),
    ),
  );
}

Widget buildLoginRegButton(String buttonName, String buttonType) {
  return GestureDetector(
    onTap: () {},

    child: Container(
      width: 300.w,
      height: 50.h,
      margin: EdgeInsets.only(top: buttonType=="Login"?40.h:15.h),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(15.w)),
        boxShadow: [BoxShadow(
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0,1),
          color: Colors.grey.withOpacity(0.1)
        )]
      ),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 17.sp,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}
