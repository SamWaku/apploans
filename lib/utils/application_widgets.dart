import 'package:flutter/cupertino.dart';

Widget buildPage(int index){
  List<Widget> _widget = [
    Center(child: Text("Home2")),
    Center(child: Text("Discover")),
    Center(child: Text("Transactions")),
    Center(child: Text("Profile"))
  ];

  return _widget[index];
}