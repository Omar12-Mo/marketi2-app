import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/common/custom_app_button.dart';
import 'package:testapp/core/routes/app_routes.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/continue_with.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/custom-text_form_field.dart';
import 'package:testapp/generated/assets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Row(children: [
                    GestureDetector(
          onTap: () => Navigator.popAndPushNamed(context, Routes.signIn),
          child: Image.asset(Assets.iconsBackIcon),
        ),
                  ],),
                  Image.asset(Assets.logeLogoSignUp, width: 150 , height: 120,),
                  //full name
                  SignUpComponent(
                    label: "Your Name",
                    hint: "Full Name",
                    prefix: Assets.iconsNameIcon,
                  ),
                  //user name
                  SignUpComponent(
                    label: "User name",
                    hint: "User Name",
                    prefix: Assets.iconsUserIcon,
                  ),
          
                  //phone number
                  SignUpComponent(
                    label: "Phone Number",
                    hint: "+20 1501142409 ",
                    prefix: Assets.iconsPhoneIcon,
                  ),
          
                  //email
                  SignUpComponent(
                    label: "Email",
                    hint: "You@gmail.com",
                    prefix: Assets.iconsEmailIcon,
                  ),
          
                  //password
                  SignUpComponent(
                    label: "Password",
                    hint: '•••••••••••',
                    prefix: Assets.iconsPasswordIcon,
                    isPassword: true,
                  ),
          
                  //confirm password
                   SignUpComponent(
                    label: "Confirm Password",
                    hint: '•••••••••••',
                    prefix: Assets.iconsPasswordIcon,
                    isPassword: true,
                  ),
                   Gap(14),
                  //sign up button
                  CustomButton(onPressed: (){}, text: "Sign Up"),
        
                  //continue With
                  ContinueWith()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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
        CustomTextFormFiled(hint: hint, prefixIcon: Image.asset(prefix), isPassword: isPassword,),
        Gap(4),
      ],
    );
  }
}
