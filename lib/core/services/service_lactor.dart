import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:testapp/core/common/app_user.dart';
import 'package:testapp/core/database/api/api_consumer.dart';
import 'package:testapp/core/database/api/dio_consumer.dart';
import 'package:testapp/core/database/cache/cashe_helper.dart';
import 'package:testapp/features/onboarding&auth/data/models/user_model.dart';
import 'package:testapp/features/onboarding&auth/data/repository/auth_repository.dart';
import 'package:testapp/features/onboarding&auth/presentation/cubit/login_cubit.dart';

final sl = GetIt.instance;

void initServiceLactor() {
  sl.registerLazySingleton<CasheHelper>(() => CasheHelper());
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => AuthRepository());
  
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(sl()));
  sl.registerLazySingleton(() => AppUser());
}
