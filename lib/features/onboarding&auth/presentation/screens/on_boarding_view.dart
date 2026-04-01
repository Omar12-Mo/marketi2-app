import 'package:flutter/material.dart';

import 'package:testapp/features/onboarding&auth/data/models/page_view_model.dart';
import 'package:testapp/features/onboarding&auth/presentation/components/onboarding_component.dart';


class OnBoarding1Screen extends StatefulWidget {
  const OnBoarding1Screen({super.key});

  @override
  State<OnBoarding1Screen> createState() => _OnBoarding1ScreenState();
}

class _OnBoarding1ScreenState extends State<OnBoarding1Screen> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(); 
  }

  @override
  void dispose() {
    pageController.dispose(); 
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
   
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

