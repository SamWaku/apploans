// //unify blocprovider routes and pages
import 'package:apploans/common/routes/routes.dart';
import 'package:apploans/pages/Auth/sign_in/sign_in.dart';
import 'package:apploans/pages/Auth/sign_up/bloc/signup_blocs.dart';
import 'package:apploans/pages/Auth/sign_up/sign_up.dart';
import 'package:apploans/pages/welcome/bloc/welcome_blocs.dart';
import 'package:apploans/pages/welcome/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppPages{
  static List<PageEntity> routes() {
    return [
      PageEntity(
          routes: AppRoutes.INITIAL,
          page: Welcome(),
          bloc: BlocProvider(create: (_) => WelcomeBloc())
      ),
      PageEntity(
          routes: AppRoutes.SIGN_IN,
          page: SignIn(),
          bloc: BlocProvider(create: (_) => SignUpBlocs(),)
      ),
      PageEntity(
          routes: AppRoutes.SIGN_UP,
          page: SignUp(),
          bloc: BlocProvider(create: (_) => SignUpBlocs())
      ),
      PageEntity(
          routes: AppRoutes.HOMEPAGE,
          page: Welcome(),
          bloc: BlocProvider(create: (_) => SignUpBlocs())
      )
    ];

  }

  static List<dynamic> allBlocProviders(BuildContext context){
    List<BlocProvider> blocProviders = <BlocProvider>[];
    for(var bloc in routes()){
      blocProviders.add(bloc.bloc);
    }
    return blocProviders;
  }

  static MaterialPageRoute GenerateRouteSettings(RouteSettings settings){
    if(settings.name != null){
      var result = routes().where((element) => element.routes == settings.name);
      if(result.isNotEmpty){
        print("valid route name ${settings.name}");
        return MaterialPageRoute(
            builder: (_) => result.first.page,
            settings: settings
        );
      }
    }
    return MaterialPageRoute(builder: (_) => SignIn(), settings: settings);
  }
}


class PageEntity{
  String routes;
  Widget page;
  dynamic bloc;

  PageEntity({required this.routes, required this.page, required this.bloc});
}

