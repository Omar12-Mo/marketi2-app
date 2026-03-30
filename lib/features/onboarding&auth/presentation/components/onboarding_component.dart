import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:testapp/core/utils/app_colors.dart';
import 'package:testapp/core/utils/app_text_style.dart';
import 'package:testapp/features/onboarding&auth/data/models/page_view_model.dart';

class PageViewComponent extends StatelessWidget {
  const PageViewComponent({
    super.key,
    required this.pageController,
    required this.index, required this.pageViewModel,
  });
  final PageViewModel pageViewModel;
  final int index;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 150),

          //image boarding
          Image.asset(pageViewModel.image),
          SizedBox(height: 30),

          //page indicator
          SmoothPageIndicator(
            controller: pageController, // PageController
            count: 3,
            effect: WormEffect(
              dotColor: AppColors.lightBlue700,
              activeDotColor: AppColors.textPrimary,
            ), // your preferred effect
            onDotClicked: (index) {},
          ),

          SizedBox(height: 20),

          Text(
            pageViewModel.tittle,
            style: semibold(color: AppColors.textPrimary, fontsize: 20),
          ),
          SizedBox(height: 50),
          Text(
            textAlign: TextAlign.center,
            pageViewModel.subTittle,
            style: medium(color: AppColors.textPrimary, fontsize: 14),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {

              //todo implement routing to auth
                 // index==2?
               
             pageController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            child: Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: AppColors.darkBlue100,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Text(
                  index == 2 ? "Get Start" : "Next",
                  style: medium(color: AppColors.primaryColor, fontsize: 18),
                ),
              ),
            ),
          ),

          SizedBox(height: 45),
        ],
      ),
    );
  }
}
