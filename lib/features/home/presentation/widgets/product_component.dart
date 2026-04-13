import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testapp/core/common/widgets/spin_loading.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/home/data/models/product_model.dart';
import 'package:testapp/features/home/presentation/widgets/add-favourite.dart';
import 'package:testapp/generated/assets.dart';

class ProductComponent extends StatelessWidget {
  const ProductComponent({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: AppColors.lightBlue900,

      child: Container(
        width: 160,
        height: 144,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryColor,
        ),

        child: Stack(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${productModel.price} LE",
                          style: medium(
                            color: AppColors.textPrimary,
                            fontsize: 12,
                          ),
                        ),
                        Text(
                          productModel.rating.toString(),
                          style: medium(
                            color: AppColors.textPrimary,
                            fontsize: 12,
                          ),
                        ),
                      ],
                    ),
                    Gap(2),
                    Align(
                      alignment: AlignmentGeometry.bottomLeft,
                      child: Text(
                        productModel.title,
                        style: medium(
                          color: AppColors.textPrimary,
                          fontsize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: AlignmentGeometry.topCenter,
              child: Container(
                width: 152,
                height: 96,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.lightBlue900,
                ),
                child: Center(
                  child: Image.network(
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return SpinLoading();
                    },
                    productModel.images[0] ?? Assets.iconsFavoriteIcon,
                    width: 105,
                    height: 105,
                  ),
                ),
              ),
            ),

            Align(
              alignment: AlignmentGeometry.topRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 9,
                ),
                child: AddFavourite(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
