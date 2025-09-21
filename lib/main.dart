import 'package:apploans/pages/Auth/bloc/siginin_blocs.dart';
import 'package:apploans/pages/Auth/sign_in/sign_in.dart';
import 'package:apploans/pages/Auth/sign_up/sign_up.dart';
import 'package:apploans/pages/Home/home_page.dart';
import 'package:apploans/pages/bloc_providers.dart';
import 'package:apploans/pages/welcome/bloc/welcome_blocs.dart';
import 'package:apploans/pages/welcome/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_blocs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProviders.allBlocProviders,
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          routes: {
            // "myHomePage": (context) => const MyHomePage(title: "Home"),
            "signIn": (context) => const SignIn(),
            "register": (context) => const SignUp(),
            "home": (context) => const HomePage()
          },
        ),
      ),
    );
  }
}
