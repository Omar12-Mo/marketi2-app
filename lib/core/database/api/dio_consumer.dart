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
    }
  }
}


//handle exception method
void handleException(DioException e) {
  switch (e.type) {
    case DioExceptionType.badCertificate:
      throw BadCertificateException(ErrorModel.fromjson(e.response!.data));

    case DioExceptionType.connectionTimeout:
      throw ConnectionTimeoutException(ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.connectionError:
      throw ServerExceptions(ErrorModel.fromjson(e.response!.data));
    case DioExceptionType.unknown:
    case DioExceptionType.cancel:
      throw ServerExceptions(
        ErrorModel(errorMessage: "not found", statusCode: 500),
      );
    case DioExceptionType.badResponse:
      switch (e.response!.statusCode) {
        case 400: //bad request
          throw BadRequestException(ErrorModel.fromjson(e.response!.data));

        case 401: //unauthorized
          throw UnauthorizedException(ErrorModel.fromjson(e.response!.data));

        case 403: //forbidden
          throw ForbiddenException(ErrorModel.fromjson(e.response!.data));

        case 404: //notFound
          throw NotFoundException(ErrorModel.fromjson(e.response!.data));

        case 409: //conflict
          throw ConflictException(ErrorModel.fromjson(e.response!.data));
        case 504:
          throw BadRequestException(ErrorModel.fromjson(e.response!.data));
      }
  }
}
