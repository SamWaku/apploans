import 'package:apploans/pages/Home/home_page.dart';
import 'package:apploans/pages/Profile/profile_page.dart';
import 'package:flutter/cupertino.dart';

Widget buildPage(int index) {
  List<Widget> _widget = [
    HomePage(),
    Center(child: Text("Discover ")),
    Center(child: Text("Transactions")),
    ProfilePage(),
  ];

  return _widget[index];
}
