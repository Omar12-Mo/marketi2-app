import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/common/custom_app_button.dart';

import 'package:testapp/features/onboarding&auth/presentation/components/arrow_back.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/continue_with.dart';

import 'package:testapp/features/onboarding&auth/presentation/components/sign_up_component.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/signup_form.dart';
import 'package:testapp/features/onboarding&auth/presentation/cubit/sign_up_cubit.dart';
import 'package:testapp/generated/assets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    ArrowBack(),
                    Image.asset(Assets.logeLogoSignUp, width: 150, height: 120),

                    SignUpForm(),

                    //continue With
                    ContinueWith(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
