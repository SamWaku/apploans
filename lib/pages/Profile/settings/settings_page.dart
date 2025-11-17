import 'package:apploans/pages/Profile/settings/bloc/settings_blocs.dart';
import 'package:apploans/pages/Profile/settings/bloc/settings_events.dart';
import 'package:apploans/pages/Profile/settings/bloc/settings_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: SingleChildScrollView(
        child: BlocBuilder<SettingsPageBlocs, SettingsPageStates>(
          builder: (context, state) {
            return Container(child: Column(children: [Text("Settings")]));
          },
        ),
      ),
    );
  }
}
