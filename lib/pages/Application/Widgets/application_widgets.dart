import 'package:apploans/pages/Home/home_page.dart';
import 'package:flutter/cupertino.dart';

Widget buildPage(int index) {
  List<Widget> _widget = [
    HomePage(),
    Center(child: Text("Discover")),
    Center(child: Text("Transactions")),
    Center(child: Text("Profile")),
  ];

  return _widget[index];
}
