import 'package:flutter/material.dart';
import 'package:testapp/core/routes/app_routes.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/custom_check_box.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CheckBox(),
    
        Text(
          "Remember Me",
          style: regular(color: AppColors.navy, fontsize: 12),
        ),
    
        Spacer(),
        GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, Routes.forgetPassword),
          child: Text(
            "Forgot Password?",
            style: medium(
              color: AppColors.lightBlue100,
              fontsize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
