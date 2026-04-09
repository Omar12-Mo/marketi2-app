import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/common/custom_app_button.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/sign_up_component.dart';
import 'package:testapp/generated/assets.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
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
           Gap(10),
          //sign up button
          CustomButton(onPressed: (){}, text: "Sign Up"),
        ],
      ),
    );
  }
}



