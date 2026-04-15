import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/common/widgets/custom_app_button.dart';
import 'package:testapp/core/common/widgets/show_toast.dart';
import 'package:testapp/core/routes/app_routes.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/sign_up_component.dart';
import 'package:testapp/features/onboarding&auth/presentation/cubit/sign_up_cubit.dart';
import 'package:testapp/app/generated/assets.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          ShowToast(message: state.message, state: ToastStates.success);
          Navigator.pushReplacementNamed(
                                context,
                                Routes.signIn,
                              );
        } else if (state is SignUpErrorState) {
          ShowToast(message: state.message, state: ToastStates.fail);
        }
      },
      builder: (context, state) {
        return Form(
          key: BlocProvider.of<SignUpCubit>(context).formKey,
          child: Column(
            children: [
              //full name
              SignUpComponent(
                textEditingController: BlocProvider.of<SignUpCubit>(
                  context,
                ).nameController,
                label: "Your Name",
                hint: "Full Name",
                prefix: Assets.iconsNameIcon,
              ),
              //user name
              SignUpComponent(
                textEditingController: BlocProvider.of<SignUpCubit>(
                  context,
                ).nameController,
                label: "User name",
                hint: "User Name",
                prefix: Assets.iconsUserIcon,
              ),

              //phone number
              SignUpComponent(
                textEditingController: BlocProvider.of<SignUpCubit>(
                  context,
                ).phoneController,
                label: "Phone Number",
                hint: "+20 1501142409 ",
                prefix: Assets.iconsPhoneIcon,
              ),

              //email
              SignUpComponent(
                textEditingController: BlocProvider.of<SignUpCubit>(
                  context,
                ).emailController,
                label: "Email",
                hint: "You@gmail.com",
                prefix: Assets.iconsEmailIcon,
              ),

              //password
              SignUpComponent(
                textEditingController: BlocProvider.of<SignUpCubit>(
                  context,
                ).passwordController,
                label: "Password",
                hint: '•••••••••••',
                prefix: Assets.iconsPasswordIcon,
                isPassword: true,
              ),

              //confirm password
              SignUpComponent(
                textEditingController: BlocProvider.of<SignUpCubit>(
                  context,
                ).confirmPasswordController,
                label: "Confirm Password",
                hint: '•••••••••••',
                prefix: Assets.iconsPasswordIcon,
                isPassword: true,
              ),
              Gap(10),
              //sign up button
              BlocBuilder<SignUpCubit, SignUpState>(
                builder: (context, state) {
                  return state is SignUpLoadingState
                      ? SpinKitFadingCircle(color: AppColors.darkBlue200)
                      : CustomButton(
                          onPressed: () {
                            BlocProvider.of<SignUpCubit>(
                              context,
                            ).formKey.currentState!.validate();
                            BlocProvider.of<SignUpCubit>(context).signUp();
                            
                          },
                          text: "Sign Up",
                        );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
