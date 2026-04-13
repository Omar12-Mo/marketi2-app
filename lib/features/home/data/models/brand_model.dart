import 'package:testapp/generated/assets.dart';

class BrandModel {
  final String name;
  final String emoji;

  BrandModel({required this.name, required this.emoji});

  factory BrandModel.fromjson(Map<String, dynamic> jsondata) {
    return BrandModel(name: jsondata["name"], emoji: jsondata["emoji"]);
  }
}

List<String> brandsImages = [
  Assets.brandsAdidasLogo,
  Assets.brandsAppleLogo,
  Assets.brandsCanonLogo,
  Assets.brandsHpLogo,
  Assets.brandsJblLogo,
  Assets.brandsLacosteLogo,
  Assets.brandsPampersLogo,
  Assets.brandsSonyLogo,
  Assets.brandsToshibaLogo,
  Assets.brandsTwonTeamLogo,
];
