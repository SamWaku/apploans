import 'package:apploans/pages/Home/widgets/home_page_wigets.dart';
import 'package:flutter/material.dart';

import '../Auth/sign_in/widgets/sign_in_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeBuildAppBar,
    )
  }
}
