import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'package:testapp/features/onboarding&auth/data/repository/auth_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
 
  LoginCubit() : super(LoginInitial());


 
  GlobalKey<FormState> loginlKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
 
}
