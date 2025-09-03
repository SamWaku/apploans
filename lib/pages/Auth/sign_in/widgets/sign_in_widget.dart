import 'package:flutter/material.dart';

AppBar buildAppBar(){
  return AppBar(
    title: Text("Login",style: TextStyle(
        color: Colors.black
    ),),
    centerTitle: true,
  );
}

//context needed for accessing bloc
Widget buildThirdPartyLogin(BuildContext context){
  return Container(

  );
}