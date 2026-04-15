import 'package:testapp/app/generated/assets.dart';

class PageViewModel {
  final String image;
  final String tittle;
  final String subTittle;

  PageViewModel({
    required this.image,
    required this.tittle,
    required this.subTittle,
  });
}

List<PageViewModel> pageViewModels = [
  PageViewModel(
    image: Assets.boardingIllustrationOnboarding1,
    tittle: "Welcome to Marketi",
    subTittle:
        "Discover a world of endless possibilities and shop from the comfort of your fingertips Browse through a wide range of products, from fashion and electronics to home.",
  ),
  PageViewModel(
    image: Assets.boardingIllustrationOnboarding2,
    tittle: "Easy to Buy",
    subTittle:
        "Find the perfect item that suits your style and needs With secure payment options and fast delivery, shopping has never been easier.",
  ),
  PageViewModel(
    image: Assets.boardingIllustrationOnboarding3,
    tittle: "Wonderful User Experience",
    subTittle:
        "Start exploring now and experience the convenience of online shopping at its best.",
  ),
];
