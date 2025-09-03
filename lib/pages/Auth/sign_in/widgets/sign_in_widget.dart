import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Text("Login", style: TextStyle(color: Colors.black)),
    centerTitle: true,
  );
}

//context needed for accessing bloc
Widget buildThirdPartyLogin(BuildContext context) {
  return Container(child: Row(
    children: [
      GestureDetector(
        onTap: (){

        },
        child: SizedBox(
          width: 40.w,
          height: 40.w,
          child: Image.asset("assets/icons/google.png"),
        ),
      )
    ],
  ));
}
