import 'package:flutter/material.dart';
import 'package:testapp/core/utils/app_colors.dart';

class BrandComponent extends StatelessWidget {
  const BrandComponent({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
     width: 105,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightBlue900.withAlpha(70)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(image , fit: BoxFit.fill,),
    );
  }
}
