part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoadingState extends LoginState {}

final class LoginSuccessState extends LoginState {
  final LoginModel loginModel;

  LoginSuccessState({required this.loginModel});
}

final class LoginErrorState extends LoginState {
  final String message;

  LoginErrorState({required this.message});
}
