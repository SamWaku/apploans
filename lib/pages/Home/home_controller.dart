import 'package:apploans/common/entities/user.dart';
import 'package:apploans/global.dart';
import 'package:flutter/cupertino.dart';

class HomeController{
  final BuildContext context;
  HomeController({required this.context});
  UserItem? userprofile = Global.storageService.getUserProfile();

  void init(){
    print("home controller init");
  }
}