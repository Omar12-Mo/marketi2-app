import 'package:flutter/material.dart';

import 'package:testapp/features/onboarding&auth/presentation/screens/on_boarding_1_screen.dart';
import 'package:testapp/features/onboarding&auth/presentation/screens/on_boarding_2_screen.dart';
import 'package:testapp/features/onboarding&auth/presentation/screens/on_boarding_3_screen.dart';

class Routes {
  static const String intitlRoute = "/";
  static const String onBoarding_1 = "/onBoarding_1";
  static const String onBoarding_2 = "/onBoarding_2";
  static const String onBoarding_3 = "/onBoarding_3";
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSetting) {
    switch (routeSetting.name) {
      case Routes.intitlRoute:
      return  MaterialPageRoute(
          builder: (_) {
            return OnBoarding1Screen();
          },
        );
      case Routes.onBoarding_2:
      return  MaterialPageRoute(
          builder: (_) {
            return OnBoarding2Screen();
          },
        );
      case Routes.onBoarding_3:
      return  MaterialPageRoute(
          builder: (_) {
            return OnBoarding3Screen();
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
