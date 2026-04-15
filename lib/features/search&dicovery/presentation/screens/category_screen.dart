import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/common/widgets/spin_loading.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/home/presentation/cubit/get_categories_cubit.dart';
import 'package:testapp/features/home/presentation/widgets/category_component.dart';
import 'package:testapp/features/home/presentation/widgets/custom_search_bar.dart';
import 'package:testapp/features/home/presentation/widgets/home_header.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/arrow_back.dart';
import 'package:testapp/features/product%20details/presentation/widgets/grid_of_items.dart';
import 'package:testapp/features/search&dicovery/presentation/widgets/custom_app_bar.dart';
import 'package:testapp/features/search&dicovery/presentation/widgets/name_of_page.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetCategoriesCubit()..getCategories(),
      child: Scaffold(
        appBar: customAppBAr(context, tittle: "Categories"),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchBar(),
                Gap(14),
                NameOfBage(tittle: "All Categories",),
                Gap(14),
                BlocBuilder<GetCategoriesCubit, GetCategoriesState>(
                  builder: (context, state) {
                    if (state is GetCategoriesLoading) {
                      return SpinLoading();
                    } else if (state is GetCategoriesError) {
                      return Center(child: Text(state.errorMessage));
                    } else if (state is GetCategoriesSuccess) {
                      return GridOfItems(
                        itemCount: state.categories.length,
                        itemBuilder: (context, index) {
                          return CategoryComponent(
                            categoryModel: state.categories[index],
                          );
                        },
                      );
                    } else {
                      return Center(child: Text("Not Found"));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

