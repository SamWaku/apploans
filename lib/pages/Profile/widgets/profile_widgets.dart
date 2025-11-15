import 'package:apploans/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar profileAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 18.w,
            height: 12.h,
            child: Image.asset("assets/icons/menu.png"),
          ),
          Text(
            "Profile",
            style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            width: 18.w,
            height: 18.h,
            child: Image.asset("assets/icons/more-vertical.png"),
          ),
        ],
      ),
    ),
  );
}
Widget profileImageAndEditButton(){
  return Container(
    alignment: Alignment.bottomRight,
    padding: EdgeInsets.only(right: 6.w),
    child: Container(
      child: Image(
          width:25.w,
          height:25.h,
          image: AssetImage("assets/icons/edit.png")),
        width: 25.w,
        height: 25.h,
        padding: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.w),
            color: AppColors.payLaterBlue
        )
    ),
    width: 80.w,
    height: 80.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.w),
        image: DecorationImage(image: AssetImage("assets/icons/profile-icon.png"))
    ),
  );
}

var imagesInfo = <String, String>{
  "Settings":"settings.png",
  "Payment details":"credit-card.png"
};

Widget buildListView(){
  return Column(
    children: [
      ...List.generate(imagesInfo.length, (index) => GestureDetector(
        onTap: (){},
        child: Container(
          margin: EdgeInsets.only(bottom: 15.h),
          child: Row(
            children: [
              Container(
                child: Image.asset("assets/icons/${imagesInfo.values.elementAt(index)}"),
                width: 40.w,
                height: 40.h,
                padding: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    color: AppColors.payLaterBlue
                ),
              ),
              SizedBox(width: 10.w),
              Text("${imagesInfo.keys.elementAt(index)}", )
            ],
          ),
        ),
      ))
    ],
  );
}