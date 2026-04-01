import 'package:testapp/core/database/api/end_points.dart';

class ErrorModel {
  final String errorMessage;
  final int? statusCode;

  ErrorModel({required this.errorMessage , this.statusCode});

  factory ErrorModel.fromjson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      errorMessage: jsonData[ApiKey.message],
      statusCode: jsonData[ApiKey.statusCode],
    );
  }
}
