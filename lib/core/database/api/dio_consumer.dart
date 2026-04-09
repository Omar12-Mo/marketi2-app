import 'package:dio/dio.dart';
import 'package:testapp/core/database/api/api_consumer.dart';
import 'package:testapp/core/database/api/end_points.dart';
import 'package:testapp/core/error/error_model.dart';
import 'package:testapp/core/error/exceptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer(this.dio) {
    dio.options.baseUrl = EndPoints.baseUrl;
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );
  }

  @override
  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      Response response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioException catch (e) {
      handleException(e);
    }
  }

  @override
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      Response response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioException catch (e) {
      handleException(e);
    }
  }

  @override
  Future<dynamic> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      Response response = await dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioException catch (e) {
      handleException(e);
    }
  }

  @override
  Future<dynamic> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      Response response = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioException catch (e) {
       handleException(e);
      rethrow;
    }
  }
}

//handle exception method
void handleException(DioException e) {
  final data = e.response?.data;

  switch (e.type) {
    case DioExceptionType.badCertificate:
      throw BadCertificateException(
        data != null
            ? ErrorModel.fromjson(data)
            : ErrorModel(errorMessage: "Bad Certificate", statusCode: 500),
      );

    case DioExceptionType.connectionTimeout:
      throw ConnectionTimeoutException(
        ErrorModel(errorMessage: "Connection Timeout", statusCode: 408),
      );

    case DioExceptionType.receiveTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.connectionError:
      throw ServerExceptions(
        ErrorModel(errorMessage: "Connection Error", statusCode: 500),
      );

    case DioExceptionType.unknown:
    case DioExceptionType.cancel:
      throw ServerExceptions(
        ErrorModel(errorMessage: "Unknown Error", statusCode: 500),
      );

    case DioExceptionType.badResponse:
      final statusCode = e.response?.statusCode;

      switch (statusCode) {
        case 400:
          throw BadRequestException(ErrorModel.fromjson(data));

        case 401:
          throw UnauthorizedException(ErrorModel.fromjson(data));

        case 403:
          throw ForbiddenException(ErrorModel.fromjson(data));

        case 404:
          throw NotFoundException(ErrorModel.fromjson(data));

        case 409:
          throw ConflictException(ErrorModel.fromjson(data));

        case 504:
          throw ServerExceptions(
            ErrorModel(errorMessage: "Gateway Timeout", statusCode: 504),
          );

        default:
          throw ServerExceptions(
            ErrorModel(errorMessage: "Server Error", statusCode: statusCode ?? 500),
          );
      }
  }
}