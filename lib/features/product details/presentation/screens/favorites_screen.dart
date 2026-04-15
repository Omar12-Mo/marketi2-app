import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/common/widgets/spin_loading.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/home/presentation/cubit/get_products_cubit.dart';
import 'package:testapp/features/home/presentation/widgets/brand_componet.dart';
import 'package:testapp/features/home/presentation/widgets/custom_search_bar.dart';
import 'package:testapp/features/home/presentation/widgets/home_header.dart';
import 'package:testapp/features/home/presentation/widgets/product_component.dart';
import 'package:testapp/app/generated/assets.dart';
import 'package:testapp/features/product%20details/presentation/widgets/grid_of_items.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetProductsCubit()..getAllProducts(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: Text(
            "Favorites",
            style: medium(color: AppColors.textPrimary, fontsize: 20),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: ProfileAvater(),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchBar(),

                Gap(14),
                Text(
                  "All Products",
                  style: semibold(color: AppColors.textPrimary, fontsize: 20),
                ),
                Gap(14),

                BlocBuilder<GetProductsCubit, GetProductsState>(
                  builder: (context, state) {
                    if (state is GetProductsLoading) {
                      return SpinLoading();
                    } else if (state is GetProductsSuccess) {
                      return GridOfItems(itemCount: state.products.length ,itemBuilder:(context, index) {
        return ProductComponent(
          productModel: state.products[index],
          inhomeView: false,
        );
      } ,);
                    } else if (state is GetProductserror) {
                      return Center(child: Text(state.messageerror));
                    } else {
                      return Center(child: Text("Not Fount"));
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

