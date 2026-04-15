import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/app/generated/assets.dart';

class ContinueWith extends StatelessWidget {
  const ContinueWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Or Continue With",
          style: regular(color: AppColors.navy, fontsize: 12),
        ),
        Gap(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.iconsGoogleIcon),
            Gap(16),
            Image.asset(Assets.iconsAppleIcon),
            Gap(16),
            Image.asset(Assets.iconsFacebokIcon),
          ],
        ),
      ],
    );
  }
}
