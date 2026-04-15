import 'package:flutter/material.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/app/generated/assets.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar
({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
       enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.lightBlue700,
            width: 2
          ),
          borderRadius: BorderRadius.circular(14)
        ),
        border:  OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.lightBlue700,
            width: 2
          ),
          borderRadius: BorderRadius.circular(14)
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.lightBlue700.withAlpha(70),
            width: 2
          ),
          borderRadius: BorderRadius.circular(14)
        ),
        prefixIcon: Image.asset(Assets.iconsSearchIconsUia),
        hintText: "What are you looking for ? ",
        suffixIcon: Image.asset(Assets.iconsFilterIcon)
      ),
    );
  }
}

