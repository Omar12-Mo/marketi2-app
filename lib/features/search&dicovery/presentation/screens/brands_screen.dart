import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testapp/features/home/data/models/brand_model.dart';
import 'package:testapp/features/home/presentation/widgets/brand_componet.dart';
import 'package:testapp/features/home/presentation/widgets/custom_search_bar.dart';
import 'package:testapp/features/product%20details/presentation/widgets/grid_of_items.dart';
import 'package:testapp/features/search&dicovery/presentation/widgets/custom_app_bar.dart';
import 'package:testapp/features/search&dicovery/presentation/widgets/name_of_page.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBAr(context, tittle: "Brands"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchBar(),
              Gap(14),
              NameOfBage(tittle: "All Brands"),
              Gap(14),
              GridOfItems(
                itemCount: localbrandsModels.length,
                itemBuilder: (context, index) {
                  return BrandComponent(localBrandModel: localbrandsModels[index] , inAllBrands: true,);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
