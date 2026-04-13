import 'package:flutter/material.dart';
import 'package:testapp/core/common/widgets/spin_loading.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/home/data/models/category_model.dart';
import 'package:testapp/generated/assets.dart';

class CategoryComponent extends StatelessWidget {
  const CategoryComponent({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 105,
          height: 96,
          decoration: BoxDecoration(
            color: AppColors.lightBlue900.withAlpha(70),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.lightBlue900),
          ),
          child: Image.network(
            width: 100,
            height: 95,
            categoryModel.image,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const SpinLoading();
            },
          ),
        ),
        Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          categoryModel.name,
          style: medium(color: AppColors.textPrimary, fontsize: 16),
        ),
      ],
    );
  }
}
