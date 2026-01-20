import 'dart:ui';

import 'package:flutter/cupertino.dart';

Widget homePageText(
    String text,
    FontWeight? fontWeight,
    double? fontSize,
    Color color,
    ) {
  return Container(
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    ),
  );
}


Widget _reusableMenuText(
    String text,
    Color color,
    FontWeight fontWeight,
    double fontSize,
    ) {
  return Container(
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    ),
  );
}