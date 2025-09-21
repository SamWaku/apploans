import 'package:apploans/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/application_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Column(children: [buildPage(1)]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.payLaterBlue,
          unselectedItemColor: AppColors.payLaterGrey,
          items: [
            BottomNavigationBarItem(
              label: "home",
              tooltip: "home",
              icon: SizedBox(
                width: 20.w,
                height: 20.h,
                child: Image.asset("assets/icons/home-outline.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: "discover",
              icon: SizedBox(
                width: 20.w,
                height: 20.h,
                child: Image.asset("assets/icons/search.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: "transactions",
              icon: SizedBox(
                width: 20.w,
                height: 20.h,
                child: Image.asset("assets/icons/transaction.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: "profile",
              icon: SizedBox(
                width: 24.w,
                height: 24.h,
                child: Image.asset("assets/icons/profile-outline.png"),
              ),


            ),
          ],
        ),
      ),
    );
  }
}
