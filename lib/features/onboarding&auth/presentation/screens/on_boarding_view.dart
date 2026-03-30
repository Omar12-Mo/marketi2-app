import 'package:flutter/material.dart';

import 'package:testapp/features/onboarding&auth/data/models/page_view_model.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/onboarding_component.dart';


class OnBoarding1Screen extends StatelessWidget {
  const OnBoarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: pageViewModels.length,
        itemBuilder: (context, index) {
          return PageViewComponent(
            pageViewModel: pageViewModels[index],
            pageController: pageController,
            index: index,
          );
        },
      ),
    );
  }
}

