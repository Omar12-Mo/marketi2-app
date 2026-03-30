import 'package:flutter/material.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/onboarding&auth/data/models/page_view_model.dart';

class SubTittle extends StatelessWidget {
  const SubTittle({super.key, required this.pageViewModel});

  final PageViewModel pageViewModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      pageViewModel.subTittle,
      style: medium(color: AppColors.textPrimary, fontsize: 14),
    );
  }
}