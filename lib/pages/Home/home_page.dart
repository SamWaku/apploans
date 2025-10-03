import 'package:apploans/common/values/colors.dart';
import 'package:apploans/pages/Home/widgets/home_page_wigets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Auth/sign_in/widgets/sign_in_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeBuildAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.h),
              child: Text("Hello", style: TextStyle(
                color: AppColors.primaryThirdElementText,
                fontWeight: FontWeight.bold,
                fontSize:24.sp)
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.h),
              child: Text("Samuel Wakumelo",
                  style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.bold,
                  fontSize:24.sp )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
