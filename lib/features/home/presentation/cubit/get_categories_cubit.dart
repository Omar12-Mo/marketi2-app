import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:testapp/core/services/service_lactor.dart';
import 'package:testapp/features/home/data/models/category_model.dart';
import 'package:testapp/features/home/data/repository/home_repository.dart';

part 'get_categories_state.dart';

class GetCategoriesCubit extends Cubit<GetCategoriesState> {
  GetCategoriesCubit() : super(GetCategoriesInitial());

  void getCategories() async {
    emit(GetCategoriesLoading());
    var result = await sl<HomeRepository>().getAllCategory();

    result.fold(
      (l) {
        emit(GetCategoriesError(errorMessage: l));
      },
      (r) {
        emit(GetCategoriesSuccess(categories: r));
      },
    );
  }
}
