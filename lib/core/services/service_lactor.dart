import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:testapp/core/database/api/api_consumer.dart';
import 'package:testapp/core/database/api/dio_consumer.dart';
import 'package:testapp/core/database/cache/cashe_helper.dart';

final sl = GetIt.instance;

void initServiceLactor() {
  sl.registerLazySingleton<CasheHelper>(() => CasheHelper());
  sl.registerLazySingleton( ()=>Dio());
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(sl()));
}
