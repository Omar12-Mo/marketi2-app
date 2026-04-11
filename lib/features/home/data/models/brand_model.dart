import 'dart:convert';

class BrandModel {
  final String name;
  final String emoji;

  BrandModel({required this.name, required this.emoji});

  factory BrandModel.fromjson(Map<String, dynamic> jsondata) {
    return BrandModel(name: jsondata["name"], emoji: jsondata["emoji"]);
  }
}
