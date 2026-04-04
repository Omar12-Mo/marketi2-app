import 'package:dio/dio.dart';

class ApiInterceprors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {


    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);
  }
}
