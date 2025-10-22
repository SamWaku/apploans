import 'package:flutter/material.dart';

AppBar profileAppBar(){
  return AppBar(
    title: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Text("Profile"),
          SizedBox(),
        ],
      ),
    ),
  );
}