import 'package:testapp/app/generated/assets.dart';

class BrandModel {
  final String name;
  final String emoji;

  BrandModel({required this.name, required this.emoji});

  factory BrandModel.fromjson(Map<String, dynamic> jsondata) {
    return BrandModel(name: jsondata["name"], emoji: jsondata["emoji"]);
  }
}

class LocalBrandModel {
  final String name;
  final String image;

  LocalBrandModel({required this.name, required this.image});
}

List<LocalBrandModel> localbrandsModels = [
LocalBrandModel(name: "adidas", image: Assets.brandsAdidasLogo),
LocalBrandModel(name: "Apple", image: Assets.brandsAppleLogo),
LocalBrandModel(name: "Canon", image: Assets.brandsCanonLogo),
LocalBrandModel(name: "Hp", image: Assets.brandsHpLogo),
LocalBrandModel(name: "JBL", image: Assets.brandsJblLogo),
LocalBrandModel(name: "LACOSTE", image: Assets.brandsLacosteLogo),
LocalBrandModel(name: "Pampers", image: Assets.brandsPampersLogo),
LocalBrandModel(name: "Sony", image: Assets.brandsSonyLogo),
LocalBrandModel(name: "TOSHIBA", image: Assets.brandsToshibaLogo),
LocalBrandModel(name: "TownTeam", image: Assets.itemsTwonTeamLogo),
];


