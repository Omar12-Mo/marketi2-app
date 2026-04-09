class LoginModel {
  final String message;
  final String token;

  LoginModel({required this.message, required this.token});

  factory LoginModel.fromjson(Map<String, dynamic> jsondata) {
    return LoginModel(message: jsondata["message"], token: jsondata["token"]);
  }
}
