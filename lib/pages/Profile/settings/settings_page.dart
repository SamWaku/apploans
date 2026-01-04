import 'package:apploans/common/routes/names.dart';
import 'package:apploans/common/values/constants.dart';
import 'package:apploans/pages/Application/bloc/application_blocs.dart';
import 'package:apploans/pages/Application/bloc/application_events.dart';
import 'package:apploans/pages/Profile/settings/bloc/settings_blocs.dart';
import 'package:apploans/pages/Profile/settings/bloc/settings_states.dart';
import 'package:apploans/pages/Profile/settings/widgets/settings_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../global.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void logout(){
    context.read<ApplicationBlocs>().add(TriggerHomeEvent(0));
    Global.storageService.remove(
        AppConstants.STORAGE_USER_TOKEN_KEY
    );
    Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.SIGN_IN, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: SettingsAppBar(),
      body: SingleChildScrollView(
        child: BlocBuilder<SettingsPageBlocs, SettingsPageStates>(
          builder: (context, state) {
            return Container(
              child: Column(
                children: [
                  SettingsButton(context, logout)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
