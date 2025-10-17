import 'package:apploans/common/values/colors.dart';
import 'package:apploans/pages/Home/bloc/home_page_blocs.dart';
import 'package:apploans/pages/Home/bloc/home_page_states.dart';
import 'package:apploans/pages/Home/widgets/home_page_wigets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: BlocBuilder<HomePageBlocs, HomePageStates>(
        builder: (context, state){
          return Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25.w),
            child: CustomScrollView(
              //crossAxisAlignment: CrossAxisAlignment.start,
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(top: 20.h),
                    child: homePageText(
                      "Hi",
                      FontWeight.bold,
                      24.sp,
                      AppColors.primaryThirdElementText,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(top: 10.h),
                    child: homePageText(
                      "Samuel Wakumelo ",
                      FontWeight.normal,
                      24.sp,
                      AppColors.primaryText,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 20.h,),
                ),
                SliverToBoxAdapter(
                  child: searchView(),
                ),
                SliverToBoxAdapter(
                  child: slidersView(context, state),
                ),
                SliverToBoxAdapter(
                  child: menuView(),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
