import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:testapp/core/utils/app_colors.dart';

class SmothPageIndicator extends StatelessWidget {
  const SmothPageIndicator({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController, // PageController
      count: 3,
      effect: WormEffect(
        dotColor: AppColors.lightBlue700,
        activeDotColor: AppColors.textPrimary,
      ), // your preferred effect
      onDotClicked: (index) {},
    );
  }
}
