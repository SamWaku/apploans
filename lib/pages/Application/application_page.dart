import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common/values/colors.dart';
import '../../utils/application_widgets.dart';
import 'Widgets/application_page_widgets.dart';
import 'bloc/application_blocs.dart';
import 'bloc/application_events.dart';
import 'bloc/application_states.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<ApplicationBlocs, ApplicationStates>(
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
                    context.read<ApplicationBlocs>().add(TriggerHomeEvent(value));
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
