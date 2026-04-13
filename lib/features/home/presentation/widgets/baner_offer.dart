import 'package:flutter/material.dart';
import 'package:testapp/generated/assets.dart';

class BanerOffer extends StatelessWidget {
  const BanerOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Image.asset(Assets.boardingOffer1));
  }
}
