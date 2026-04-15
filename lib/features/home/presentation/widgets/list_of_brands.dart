import 'package:flutter/material.dart';
import 'package:testapp/features/home/data/models/brand_model.dart';
import 'package:testapp/features/home/presentation/widgets/brand_componet.dart';
import 'package:testapp/features/home/presentation/widgets/list_of_items.dart';

class ListOfBrands extends StatelessWidget {
  const ListOfBrands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListOfItems(
      listHeigh: 105,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: BrandComponent(localBrandModel:  localbrandsModels[index]),
        );
      },
    );
  }
}
