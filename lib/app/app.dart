import 'package:flutter/material.dart';
import 'package:testapp/core/routes/app_routes.dart';
import 'package:testapp/core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.intitlRoute,
      onGenerateRoute: AppRoutes.generateRoute,
      title: 'Flutter Demo',
      theme: AppTheme.appLightTheme(),
      darkTheme: AppTheme.appDarkTheme(),
      
      home: Scaffold(),
    );
  }
}
