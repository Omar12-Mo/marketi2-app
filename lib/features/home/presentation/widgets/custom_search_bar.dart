import 'package:flutter/material.dart';
import 'package:testapp/generated/assets.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar
({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Image.asset(Assets.iconsSearchIconsUia),
        hintText: "What are you looking for ? ",
        suffixIcon: Image.asset(Assets.iconsFilterIcon)
      ),
    );
  }
}

