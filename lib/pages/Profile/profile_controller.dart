
import 'package:flutter/cupertino.dart';

import '../../common/entities/user.dart';
import '../../global.dart';

class ProfileController{
  final BuildContext context;
  ProfileController({required this.context});
  UserItem? userprofile = Global.storageService.getUserProfile();

  void init(){
    print("home controller init");
  }
}