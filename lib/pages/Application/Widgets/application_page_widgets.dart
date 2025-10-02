import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';

var bottomTabs = [
  BottomNavigationBarItem(
      label: "home",
      tooltip: "home",
      icon: SizedBox(
        width: 20.w,
        height: 20.h,
        child: Image.asset("assets/icons/home-outline.png"),
      ),
      activeIcon: SizedBox(
          width: 24.w,
          height: 24.h,
          child: Image.asset("assets/icons/home-outline.png", color: AppColors.payLaterBlue)
      )
  ),
  BottomNavigationBarItem(
      label: "discover",
      icon: SizedBox(
        width: 20.w,
        height: 20.h,
        child: Image.asset("assets/icons/search.png"),
      ),
      activeIcon: SizedBox(
          width: 22.w,
          height: 22.h,
          child: Image.asset("assets/icons/search.png", color: AppColors.payLaterBlue)
      )
  ),
  BottomNavigationBarItem(
      label: "transactions",
      icon: SizedBox(
        width: 20.w,
        height: 20.h,
        child: Image.asset("assets/icons/transaction.png"),
      ),
      activeIcon: SizedBox(
          width: 22.w,
          height: 22.h,
          child: Image.asset("assets/icons/transaction.png", color: AppColors.payLaterBlue)
      )
  ),
  BottomNavigationBarItem(
      label: "profile",
      icon: SizedBox(
        width: 24.w,
        height: 24.h,
        child: Image.asset("assets/icons/profile-outline.png"),
      ),
      activeIcon: SizedBox(
          width: 26.w,
          height: 26.h,
          child: Image.asset("assets/icons/profile-outline.png", color: AppColors.payLaterBlue)
      )
  ),
];