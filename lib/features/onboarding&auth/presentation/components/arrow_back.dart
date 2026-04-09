import 'package:flutter/material.dart';
import 'package:testapp/core/routes/app_routes.dart';
import 'package:testapp/generated/assets.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      GestureDetector(
              onTap: () => Navigator.popAndPushNamed(context, Routes.signIn),
              child: Image.asset(Assets.iconsBackIcon),
            ),
    ],);
  }
}