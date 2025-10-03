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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 7.w, right: 7.w),
              child: Text("Hello", style: TextStyle(
                color: AppColors.primaryThirdElementText,
                fontWeight: FontWeight.bold,
                fontSize:24.sp
              )),
            )
          ],
        ),
      ),
    );
  }
}
