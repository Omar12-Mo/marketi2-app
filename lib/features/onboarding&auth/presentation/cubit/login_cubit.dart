import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:testapp/core/services/service_lactor.dart';
import 'package:testapp/features/onboarding&auth/data/models/login_model.dart';

import 'package:testapp/features/onboarding&auth/data/repository/auth_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  GlobalKey<FormState> loginlKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void logIn() async {
    emit(LoginLoadingState());
    var result = await sl<AuthRepository>().signIn(
      email: emailController.text,
      password: passwordController.text,
    );

    result.fold(
      ifLeft: (l) {
        emit(LoginErrorState(message: l));
      },
      ifRight: (r) {
        emit(LoginSuccessState(loginModel: r));
      },
    );
  }
}
