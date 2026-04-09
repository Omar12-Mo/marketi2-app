import 'package:flutter/material.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/generated/assets.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(Assets.iconsBackIcon),
        centerTitle: false,
        title: Text("Forgot Password" , style: medium(color: AppColors.navy, fontsize: 16),),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(Assets.boardingIllustrationForgotPasswordWithPhone),
          ],
        ),
      ),
    );
  }
}
