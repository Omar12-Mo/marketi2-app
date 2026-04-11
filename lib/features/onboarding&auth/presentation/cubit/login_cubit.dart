import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:testapp/core/common/app_user.dart';
import 'package:testapp/core/database/cache/cashe_helper.dart';
import 'package:testapp/core/services/service_lactor.dart';
import 'package:testapp/features/onboarding&auth/data/models/login_model.dart';
import 'package:testapp/features/onboarding&auth/data/models/user_model.dart';

import 'package:testapp/features/onboarding&auth/data/repository/auth_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  GlobalKey<FormState> loginlKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginModel? loginModel;
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
      ifRight: (r) async {
       

        loginModel = r;
        sl<AppUser>().setUser(r.userModel);
        await sl<CasheHelper>().savedata(key: "token", value: r.token);
         emit(LoginSuccessState(loginModel: r));
      },
    );
  }
}
