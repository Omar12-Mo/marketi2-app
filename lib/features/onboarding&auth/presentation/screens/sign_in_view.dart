import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'package:testapp/features/onboarding&auth/presentation/components/login_form.dart';
import 'package:testapp/features/onboarding&auth/presentation/cubit/login_cubit.dart';
import 'package:testapp/generated/assets.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  Gap(50),
                  Image.asset(Assets.logeLogoLogIn),
                  Gap(32),
                  LoginForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
