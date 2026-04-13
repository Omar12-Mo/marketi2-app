import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:testapp/core/services/service_lactor.dart';
import 'package:testapp/features/home/data/models/product_model.dart';
import 'package:testapp/features/home/data/repository/home_repository.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit() : super(GetProductsInitial());

  void getPopularProducts() async {
    emit(GetProductsLoading());
    var result = await sl<HomeRepository>().getPopularProducts();

    result.fold(
      (l) {
        emit(GetProductserror(messageerror: l));
      },
      (r) {
        emit(GetProductsSuccess(products: r));
      },
    );
  }

  void getAllProducts() async {
    emit(GetProductsLoading());

    var result = await sl<HomeRepository>().getAllProducts();

    result.fold(
      (l) {
        emit(GetProductserror(messageerror: l));
      },
      (r) {
        emit(GetProductsSuccess(products: r));
      },
    );
  }
}
