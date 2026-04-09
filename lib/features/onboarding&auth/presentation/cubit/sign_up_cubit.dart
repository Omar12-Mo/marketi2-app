import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:testapp/core/services/service_lactor.dart';
import 'package:testapp/features/onboarding&auth/data/repository/auth_repository.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void signUp() async {
    emit(SignUpLoadingState());
    final result = await sl<AuthRepository>().signUp(
      name: nameController.text,
      phone: phoneController.text,
      email: emailController.text,
      password: passwordController.text,
      confirmPassword: confirmPasswordController.text,
    );
    result.fold(
      ifLeft: (l) => emit(SignUpErrorState(message: l)),
      ifRight: (r) {
        emit(SignUpSuccessState(message: r));
      },
    );
  }
}
