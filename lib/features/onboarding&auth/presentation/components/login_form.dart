import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/common/custom_app_button.dart';
import 'package:testapp/core/routes/app_routes.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/continue_with.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/custom-text_form_field.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/custom_check_box.dart';
import 'package:testapp/generated/assets.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormFiled(
            textEditingController: TextEditingController(),
            prefixIcon: Image.asset(Assets.iconsEmailIcon),
            hint: "Username or Email",
          ),
          SizedBox(height: 14),
          CustomTextFormFiled(textEditingController: TextEditingController() ,hint: "Password", isPassword: true),
          SizedBox(height: 6),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CheckBox(),

              Text(
                "Remember Me",
                style: regular(color: AppColors.navy, fontsize: 12),
              ),

              Spacer(),
              GestureDetector(
                 onTap: () => Navigator.pushNamed(context, Routes.forgetPassword),
                child: Text(
                  "Forgot Password?",
                  style: medium(color: AppColors.lightBlue100, fontsize: 12),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          CustomButton(onPressed: () {}, text: "Log In"),
          SizedBox(height: 14),
          ContinueWith(),
          Gap(14),

          GestureDetector(
            onTap: () => Navigator.pushNamed(context, Routes.signUp),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Are you new in Marketi ",
                    style: regular(color: AppColors.navy, fontsize: 12),
                  ),
                  TextSpan(
                    text: "register?",
                    style: regular(color: AppColors.lightBlue100, fontsize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

