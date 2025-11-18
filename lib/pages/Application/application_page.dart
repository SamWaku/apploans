import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../common/values/colors.dart';
import 'Widgets/application_widgets.dart';
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
              body: buildPage(state.index),
              bottomNavigationBar:
                GNav(tabs: [
                  GButton(icon: CupertinoIcons.home, text: "Home"),
                  GButton(icon: CupertinoIcons.square_grid_2x2, text: "Services"),
                  GButton(icon: CupertinoIcons.search),
                  GButton(icon: CupertinoIcons.person),
                ])
            ),
          );
        }
    );
  }
}
