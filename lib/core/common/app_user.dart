import 'package:testapp/features/onboarding&auth/data/models/user_model.dart';

class AppUser {
  UserModel? _currentUser;

  UserModel? get currentUser => _currentUser;

  void setUser(UserModel user) => _currentUser = user;
  
  void clearUser() => _currentUser = null;

  bool get isLoggedIn => _currentUser != null;
}