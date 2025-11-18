import 'package:apploans/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar SettingsAppBar() {
  return AppBar(
    title: Container(
      padding: EdgeInsets.only(left: 85.w),
          child: Text(
            "Settings",
            style: TextStyle(
              color: AppColors.primaryText,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
        )
    );
}
