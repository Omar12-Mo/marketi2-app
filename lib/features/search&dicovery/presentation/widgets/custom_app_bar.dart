import 'package:flutter/material.dart';
import 'package:testapp/features/home/presentation/widgets/home_header.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/arrow_back.dart';

AppBar customAppBAr(BuildContext context , {required String tittle}) {
  return AppBar(
    leading: ArrowBack(onTap: () => Navigator.pop(context)),
    title: Text(tittle),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: ProfileAvater(),
      ),
    ],
  );
}
