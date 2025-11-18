import 'package:apploans/pages/Profile/settings/bloc/settings_blocs.dart';
import 'package:apploans/pages/Profile/settings/bloc/settings_events.dart';
import 'package:apploans/pages/Profile/settings/bloc/settings_states.dart';
import 'package:apploans/pages/Profile/settings/widgets/settings_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: SettingsAppBar(),
      body: SingleChildScrollView(
        child: BlocBuilder<SettingsPageBlocs, SettingsPageStates>(
          builder: (context, state) {
            return
              Container
                (child: Column
                (
                  children:
                  [
                    Container(
                      height: 100.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/icons/Logout.png"))
                      ),
                    )
                  ]
                )
              );
          },
        ),
      ),
    );
  }
}
