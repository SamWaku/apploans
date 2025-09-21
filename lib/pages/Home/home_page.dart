import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Column(children: [buildPage(_index)]),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value){
            setState((){
              _index = value;
            });
            print(_index);
          },
          elevation: 0,
          // currentIndex: 1,
          // type: BottomNavigationBarType.fixed,
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
