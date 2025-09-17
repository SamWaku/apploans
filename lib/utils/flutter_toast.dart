import 'package:flutter/material.dart';

void toastInfo({
  required BuildContext context,
  required String msg,
  Color backgroundColor = Colors.black,
  Color textColor = Colors.white,
  Duration duration = const Duration(seconds: 2),
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        msg,
        style: TextStyle(color: textColor),
      ),
      backgroundColor: backgroundColor,
      duration: duration,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.only(
        top: 50, // Distance from top
        left: 16,
        right: 16,
        // bottom: 150, // Push it to top
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}