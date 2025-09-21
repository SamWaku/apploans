import 'package:flutter/material.dart';

import '../../utils/application_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home")
        ),
        body: Column(
          children: [
            buildPage(1)
          ],
        ),
      ),
    );
  }
}
