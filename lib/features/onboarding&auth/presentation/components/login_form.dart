import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/common/widgets/custom_app_button.dart';
import 'package:testapp/core/common/widgets/show_toast.dart';
import 'package:testapp/core/common/widgets/spin_loading.dart';
import 'package:testapp/core/routes/app_routes.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/continue_with.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/custom-text_form_field.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/custom_check_box.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/remember_me.dart';
import 'package:testapp/features/onboarding&auth/presentation/cubit/login_cubit.dart';
import 'package:testapp/app/generated/assets.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          ShowToast(
            message: state.loginModel.message,
            state: ToastStates.success,
          );
           Navigator.pushReplacementNamed(
                          context,
                          Routes.homeScreen,
                        );
        } else if (state is LoginErrorState) {
          ShowToast(message: state.message, state: ToastStates.fail);
        }
      },
      builder: (context, state) {
        return Form(
          key: BlocProvider.of<LoginCubit>(context).loginlKey,
          child: Column(
            children: [
              CustomTextFormFiled(
                textEditingController: BlocProvider.of<LoginCubit>(
                  context,
                ).emailController,
                prefixIcon: Image.asset(Assets.iconsEmailIcon),
                hint: "Username or Email",
              ),
              SizedBox(height: 14),
              CustomTextFormFiled(
                textEditingController: BlocProvider.of<LoginCubit>(
                  context,
                ).passwordController,
                hint: "Password",
                isPassword: true,
              ),
              SizedBox(height: 6),
              RememberMe(),
              SizedBox(height: 5),
              state is LoginLoadingState
                  ? SpinLoading()
                  : CustomButton(
                      onPressed: () {
                        if (BlocProvider.of<LoginCubit>(
                          context,
                        ).loginlKey.currentState!.validate()) {
                          BlocProvider.of<LoginCubit>(context).logIn();
                        }
                       
                      },
                      text: "Log In",
                    ),
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
                        style: regular(
                          color: AppColors.lightBlue100,
                          fontsize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

