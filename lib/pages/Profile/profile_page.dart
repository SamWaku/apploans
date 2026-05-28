import 'package:apploans/pages/Profile/profile_controller.dart';
import 'package:apploans/pages/Profile/widgets/profile_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfileController _profileController;
  @override
  void initState(){
    super.initState();
    _profileController = ProfileController(context: context);
    _profileController.init();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: profileAppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              profileImageAndEditButton(_profileController.userprofile!.avatar!),
              SizedBox(height: 30.h),
              Padding(
                  padding: EdgeInsets.only(left: 25.w),
                  child: buildListView(context)
              )
            ],
          ),
        ),
      ),
    );
  }
}
