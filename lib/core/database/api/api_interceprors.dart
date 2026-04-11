import 'package:dio/dio.dart';
import 'package:testapp/core/database/cache/cashe_helper.dart';
import 'package:testapp/core/services/service_lactor.dart';

class ApiInterceprors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["token"] = sl<CasheHelper>().getToken(key: "token") ?? "";

    super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }
}
