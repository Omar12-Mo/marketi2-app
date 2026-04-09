import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'package:testapp/features/onboarding&auth/data/repository/auth_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
 
  LoginCubit({required this.authRepository}) : super(LoginInitial());


  final AuthRepository authRepository;
  GlobalKey<FormState> loginlKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
}
