import 'package:flutter/material.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/home/data/models/brand_model.dart';

class BrandComponent extends StatelessWidget {
  BrandComponent({super.key, required this.localBrandModel, this.inAllBrands = false});
  final LocalBrandModel localBrandModel;
  bool inAllBrands;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: inAllBrands ? 96 : 77,
      width: inAllBrands ? 164 : 105,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightBlue900.withAlpha(70)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [Image.asset(localBrandModel.image), if (inAllBrands) Text(localBrandModel.name , style: medium(color: AppColors.textPrimary, fontsize: 16),)],
      ),
    );
  }
}
