import 'package:flutter/material.dart';
import 'package:testapp/core/routes/app_routes.dart';
import 'package:testapp/app/generated/assets.dart';

class ArrowBack extends StatelessWidget {
   ArrowBack({super.key ,required this.onTap});
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: GestureDetector(
        onTap:onTap,
        child: Image.asset(Assets.iconsBackIcon),
      ),
    );
  }
}
