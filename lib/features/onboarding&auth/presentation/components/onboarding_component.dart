import 'package:flutter/material.dart';

import 'package:testapp/core/common/custom_app_button.dart';
import 'package:testapp/core/database/cache/cashe_helper.dart';
import 'package:testapp/core/routes/app_routes.dart';
import 'package:testapp/core/services/service_lactor.dart';

import 'package:testapp/features/onboarding&auth/data/models/page_view_model.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/smoth_page_indicator.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/sub_tittle.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/tittle.dart';

class PageViewComponent extends StatelessWidget {
  const PageViewComponent({
    super.key,
    required this.pageController,
    required this.index,
    required this.pageViewModel,
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
          SizedBox(height: 165),

          //image boarding
          Image.asset(pageViewModel.image),
          SizedBox(height: 40),

          //page indicator
          SmothPageIndicator(pageController: pageController),

          SizedBox(height: 24),

          Tittle(pageViewModel: pageViewModel),
          SizedBox(height: 44),
          SubTittle(pageViewModel: pageViewModel),
          Spacer(),
          CustomButton(
            onPressed: () async{
              if (index == 2){
              await  sl<CasheHelper>().savedata(key: "isVisited", value: true);
                Navigator.pushNamed(context, Routes.signUp);
              } else {
                pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            },
            text: index == 2 ? "Get start" : "Next",
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
