import 'package:apploans/common/values/colors.dart';
import 'package:apploans/common/widgets/base_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar SettingsAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Container(
      padding: EdgeInsets.only(left: 85.w),
      child: reusableMenuText("Settings", AppColors.primaryText, FontWeight.normal, 16.sp),
    ),
  );
}

Widget SettingsButton(BuildContext context, void Function()? func){
  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Confirm logout"),
            content: Text("Confirm logout"),
            actions: [
              TextButton(
                onPressed: Navigator.of(context).pop,
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: func,
                child: Text("Confirm"),
              ),
            ],
          );
        },
      );
    },
    child: Container(
      height: 80.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/icons/Logout.png"),
        ),
      ),
    ),
  );
}
