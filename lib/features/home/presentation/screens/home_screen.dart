import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/common/widgets/spin_loading.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/cart&checkout/presentation/screens/cart_screen.dart';
import 'package:testapp/features/home/data/models/brand_model.dart';
import 'package:testapp/features/home/presentation/cubit/get_categories_cubit.dart';
import 'package:testapp/features/home/presentation/cubit/get_products_cubit.dart';

import 'package:testapp/features/home/presentation/widgets/baner_offer.dart';
import 'package:testapp/features/home/presentation/widgets/brand_componet.dart';
import 'package:testapp/features/home/presentation/widgets/category_component.dart';
import 'package:testapp/features/home/presentation/widgets/grid_catedories.dart';
import 'package:testapp/features/home/presentation/widgets/home_header.dart';
import 'package:testapp/features/home/presentation/widgets/custom_search_bar.dart';
import 'package:testapp/features/home/presentation/widgets/list_of_brands.dart';
import 'package:testapp/features/home/presentation/widgets/list_of_items.dart';
import 'package:testapp/features/home/presentation/widgets/name_of_list.dart';
import 'package:testapp/features/home/presentation/widgets/product_component.dart';
import 'package:testapp/features/product%20details/presentation/screens/favorites_screen.dart';
import 'package:testapp/features/profile&settings/presentation/screens/menu_screen.dart';
import 'package:testapp/generated/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetProductsCubit()..getPopularProducts(),
        ),
        BlocProvider(
          create: (context) => GetCategoriesCubit()..getCategories(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Gap(14),
                  HomeHeader(),
                  Gap(14),
                  CustomSearchBar(),
                  Gap(14),
                  BanerOffer(),
                  Gap(14),
                  NameOfList(listName: "Popular Product"),
                  BlocBuilder<GetProductsCubit, GetProductsState>(
                    builder: (context, state) {
                      if (state is GetProductsLoading) {
                        return SpinLoading();
                      } else if (state is GetProductsSuccess) {
                        return ListOfItems(
                          listHeigh: 170,
                          itemCount: state.products.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 20.0,
                                bottom: 8,
                              ),
                              child: ProductComponent(
                                productModel: state.products[index],
                              ),
                            );
                          },
                        );
                      } else if (state is GetProductserror) {
                        return Center(
                          child: Container(child: Text(state.messageerror)),
                        );
                      } else {
                        return Center(child: Text("Not Found"));
                      }
                    },
                  ),

                  Gap(14),

                  NameOfList(listName: "Category"),

                  BlocBuilder<GetCategoriesCubit, GetCategoriesState>(
                    builder: (context, state) {
                      if (state is GetCategoriesLoading) {
                        return SpinLoading();
                      } else if (state is GetCategoriesSuccess) {
                        return GridCategories(
                          itemBuilder: (context, index) {
                            return CategoryComponent(
                              categoryModel: state.categories[index],
                            );
                          },
                        );
                      } else if (state is GetCategoriesError) {
                        return Center(
                          child: Text(
                            state.errorMessage,
                            style: semibold(
                              color: AppColors.textPrimary,
                              fontsize: 22,
                            ),
                          ),
                        );
                      } else {
                        return Center(
                          child: Text(
                            "Not Found",
                            style: semibold(
                              color: AppColors.textPrimary,
                              fontsize: 22,
                            ),
                          ),
                        );
                      }
                    },
                  ),

                  Gap(14),
                  NameOfList(listName: 'Brands'),

                  ListOfBrands(),
                ],
              ),
            ),
          ),
        ),
        
      ),
    );
  }
}


