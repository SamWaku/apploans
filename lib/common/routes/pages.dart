// //unify blocprovider routes and pages
import 'package:apploans/common/routes/routes.dart';
import 'package:apploans/pages/welcome/bloc/welcome_blocs.dart';
import 'package:apploans/pages/welcome/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppPages{
  List<PageEntity> routes = [
    PageEntity(
        routes: AppRoutes.INITIAL,
        page: Welcome(),
        bloc: BlocProvider(create: (_) => WelcomeBloc())
    )
  ];
}

class PageEntity{
  String routes;
  Widget page;
  dynamic bloc;

  PageEntity({required this.routes, required this.page, required this.bloc});
}

