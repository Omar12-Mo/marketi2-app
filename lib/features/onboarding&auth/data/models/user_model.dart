import 'package:testapp/app/generated/assets.dart';

class UserModel {
  final String name;
  final String phone;
  final String email;
  final String? image;

  UserModel({
    required this.name,
    required this.phone,
    required this.email,
    this.image,
  });

  factory UserModel.fromjson(Map<String, dynamic> jsonData) {
    return UserModel(
      name: jsonData["name"],
      phone: jsonData["phone"],
      email: jsonData["email"],
      image: Assets.logeUserProfile,
    );
  }
}
