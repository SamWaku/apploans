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
        builder: (context, state) {
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
                SliverPadding(padding: EdgeInsets.only(top: 20.h)),
                SliverToBoxAdapter(child: searchView()),
                SliverToBoxAdapter(child: slidersView(context, state)),
                SliverToBoxAdapter(child: menuView()),
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    vertical: 18.h,
                    horizontal: 0.w,
                  ),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15.w,
                      crossAxisCount: 2,
                      mainAxisSpacing: 15.h,
                      childAspectRatio: 1.6,
                    ),
                    delegate: SliverChildBuilderDelegate(childCount: 4, (
                      BuildContext context,
                      int index,
                    ) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 100.w,
                          height: 100.w,
                          child: Container(
                            padding: EdgeInsets.all(12.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "SnapKash",
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.primaryElementText,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                  ),
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                  "Get your SnapKash loan at a good return interest",
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.primaryElementText,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/icons/image1.png"),
                            ),
                            borderRadius: BorderRadius.circular(15.w),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
