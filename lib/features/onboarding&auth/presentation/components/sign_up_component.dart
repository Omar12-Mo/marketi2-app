import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/custom-text_form_field.dart';

class SignUpComponent extends StatelessWidget {
  const SignUpComponent({
    super.key,
    required this.label,
    required this.hint,
    required this.prefix, this.isPassword=false,
  });
  final String label;
  final String hint;
  final String prefix;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              label,
              style: medium(color: AppColors.textPrimary, fontsize: 12),
            ),
          ],
        ),
        Gap(2),
        CustomTextFormFiled( textEditingController: TextEditingController(),hint: hint, prefixIcon: Image.asset(prefix), isPassword: isPassword,),
        Gap(4),
      ],
    );
  }
}
