import 'package:dart_either/dart_either.dart';
import 'package:testapp/core/database/api/api_consumer.dart';
import 'package:testapp/core/database/api/end_points.dart';
import 'package:testapp/core/error/exceptions.dart';
import 'package:testapp/core/services/service_lactor.dart';
import 'package:testapp/features/onboarding&auth/data/models/login_model.dart';

class AuthRepository {
  Future<Either<String, LoginModel>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      var response = await sl<ApiConsumer>().post(
        EndPoints.baseUrl + EndPoints.signIn,
        data: {"email": email, "password": password},
      );
      return Right(LoginModel.fromjson(response));
    } on ServerExceptions catch (e) {
      return Left(e.errorModel.errorMessage);
    }
  }
}
