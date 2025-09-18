import 'package:apploans/pages/Auth/sign_up/bloc/signup_blocs.dart';
import 'package:apploans/pages/welcome/bloc/welcome_blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_blocs.dart';
import 'Auth/bloc/siginin_blocs.dart';

class AppBlocProviders{
  static get allBlocProviders=>[
    BlocProvider(create: (context) => WelcomeBloc()),
    //BlocProvider(lazy: false, create: (context) => AppBlocs()),
    BlocProvider(create: (context) => SignInBloc()),
    BlocProvider(create: (context) => SignUpBlocs())
  ];
}