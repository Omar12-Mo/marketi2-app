class CategoryModel {
  final String name;
  final String image;

  CategoryModel({required this.name, required this.image});

  factory CategoryModel.fromjson(Map<String, dynamic> jsondata) {
    return CategoryModel(name: jsondata["name"], image: jsondata["image"]);
  }
}
