import 'package:testapp/features/onboarding&auth/data/models/user_model.dart';

class LoginModel {
  final String message;
  final String token;
  final Map<String,dynamic> userModel;
  LoginModel({required this.message, required this.token, required this.userModel});

  factory LoginModel.fromjson(Map<String, dynamic> jsondata) {
    return LoginModel(message: jsondata["message"], token: jsondata["token"], userModel: jsondata["user"]);
  }
}
