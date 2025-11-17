import 'package:apploans/pages/Profile/settings/bloc/settings_events.dart';
import 'package:apploans/pages/Profile/settings/bloc/settings_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPageBlocs extends Bloc<SettingsPageEvents, SettingsPageStates>{
  SettingsPageBlocs(): super(SettingsPageStates());
}