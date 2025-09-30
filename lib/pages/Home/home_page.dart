import 'package:apploans/pages/Home/bloc/home_blocs.dart';
import 'package:apploans/pages/Home/bloc/home_events.dart';
import 'package:apploans/pages/Home/bloc/home_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/values/colors.dart';
import '../../utils/application_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<HomeBlocs, HomeStates>(
        builder: (context, state){
          return SafeArea(
            child: Scaffold(
              body: Column(children: [buildPage(_index)]),
              bottomNavigationBar: Container(
                width: 375.w,
                height: 58.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.h),
                        topRight: Radius.circular(20.h)
                    ),
                    color: AppColors.primaryElement,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 1
                      )]
                ),
                child: BottomNavigationBar(
                  onTap: (value){
                    context.read<HomeBlocs>().add(TriggerHomeEvent(value));
                  },
                  elevation: 0,
                  currentIndex: _index,
                  // type: BottomNavigationBarType.fixed,
                  //selectedItemColor: AppColors.payLaterBlue,
                  // unselectedItemColor: AppColors.payLaterGrey,
                  items: [
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
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}
