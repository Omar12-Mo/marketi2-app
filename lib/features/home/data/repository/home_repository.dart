import 'package:dartz/dartz.dart';
import 'package:testapp/core/database/api/api_consumer.dart';
import 'package:testapp/core/database/api/end_points.dart';
import 'package:testapp/core/error/exceptions.dart';
import 'package:testapp/core/services/service_lactor.dart';
import 'package:testapp/features/home/data/models/category_model.dart';
import 'package:testapp/features/home/data/models/product_model.dart';

class HomeRepository {
  //get popular products
  Future<Either<String, List<ProductModel>>> getPopularProducts() async {
    try {
      var result = await sl<ApiConsumer>().get(EndPoints.getPopularProducts);
      return Right(
        (result["list"] as List).map((e) {
          return ProductModel.fromjson(e);
        }).toList(),
      );
    } on ServerExceptions catch (e) {
      return left(e.errorModel.errorMessage);
    }
  }
  Future<Either<String, List<ProductModel>>> getAllProducts() async {
    try {
      var result = await sl<ApiConsumer>().get(EndPoints.getProducts(limit: 30));
      return Right(
        (result["list"] as List).map((e) {
          return ProductModel.fromjson(e);
        }).toList(),
      );
    } on ServerExceptions catch (e) {
      return left(e.errorModel.errorMessage);
    }
  }

  // get all gategory

  Future<Either<String, List<CategoryModel>>> getAllCategory() async {
    try {
      var result = await sl<ApiConsumer>().get(EndPoints.getallgategory);

      return Right(
        (result["list"] as List).map((e) {
          return CategoryModel.fromjson(e);
        }).toList(),
      );
    } on ServerExceptions catch (e) {
      return left(e.errorModel.errorMessage);
    }
  }

  
}
