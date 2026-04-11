import 'package:flutter/material.dart';
import 'package:testapp/core/database/cache/cashe_helper.dart';
import 'package:testapp/core/services/service_lactor.dart';
import 'package:testapp/features/home/presentation/screens/home_screen.dart';
import 'package:testapp/features/onboarding&auth/presentation/screens/forget_password.dart';

import 'package:testapp/features/onboarding&auth/presentation/screens/on_boarding_view.dart';
import 'package:testapp/features/onboarding&auth/presentation/screens/sign_in_view.dart';
import 'package:testapp/features/onboarding&auth/presentation/screens/sign_up_view.dart';

class Routes {
  static const String intitlRoute = "/";
  static const String signUp = "signUp";
  static const String signIn = "signIn";
  static const String forgetPassword = "forgetPassword";
  static const String homeScreen = "homeScreen";
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSetting) {
    switch (routeSetting.name) {
      case Routes.intitlRoute:
        return MaterialPageRoute(
          builder: (_)=> getInitalRoute()
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) {
            return SignUp();
          },
        );
      case Routes.signIn:
        return MaterialPageRoute(
          builder: (_) {
            return SignInView();
          },
        );

      case Routes.forgetPassword:
        return MaterialPageRoute(
          builder: (_) {
            return ForgetPassword();
          },
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) {
            return HomeScreen();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(body: Center(child: Text("not found")));
          },
        );
    }
  }
}

Widget getInitalRoute() {
  bool isVisitedOnboarding =
      sl<CasheHelper>().getdata(key: "isVisited") ?? false;
  bool isLoggedIn = sl<CasheHelper>().getToken(key: "token") == null
      ? false
      : true;

  if (!isVisitedOnboarding) {
    return OnBoarding1Screen();
  } else if (!isLoggedIn) {
    return SignInView();
  } else {
    return HomeScreen();
  }
}
