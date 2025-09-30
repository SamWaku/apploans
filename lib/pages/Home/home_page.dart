import 'package:apploans/pages/Home/Widgets/home_page_widgets.dart';
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
              body: Column(children: [buildPage(state.index)]),
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
                  currentIndex: state.index,
                  // type: BottomNavigationBarType.fixed,
                  //selectedItemColor: AppColors.payLaterBlue,
                  // unselectedItemColor: AppColors.payLaterGrey,
                  items: bottomTabs,
                ),
              ),
            ),
          );
        }
    );
  }
}
