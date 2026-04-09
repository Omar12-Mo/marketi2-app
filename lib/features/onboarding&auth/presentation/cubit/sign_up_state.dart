part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoadingState extends SignUpState {}

final class SignUpSuccessState extends SignUpState {
  final String message;

  SignUpSuccessState({required this.message});
}

final class SignUpErrorState extends SignUpState {
   final String message;

  SignUpErrorState({required this.message});
}
