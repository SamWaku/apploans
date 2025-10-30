import 'package:apploans/pages/Profile/widgets/profile_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: profileAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.w),
                image: DecorationImage(image: AssetImage("asset/icon/profile-icon.png"))
              ),
            )
          ],
        ),
      ),
    );
  }
}
