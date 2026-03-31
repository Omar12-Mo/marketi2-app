import 'package:get_it/get_it.dart';
import 'package:testapp/core/database/cache/cashe_helper.dart';

final sl = GetIt.instance;

void initServiceLactor() {
  sl.registerLazySingleton<CasheHelper>(() => CasheHelper());
}
