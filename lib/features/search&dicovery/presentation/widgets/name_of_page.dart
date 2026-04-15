import 'package:flutter/material.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';

class NameOfBage extends StatelessWidget {
  const NameOfBage({super.key, required this.tittle});
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: semibold(color: AppColors.textPrimary, fontsize: 20),
    );
  }
}
