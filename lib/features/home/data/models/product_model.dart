class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String thumbnail;
  final List<dynamic> images;
  final String availabilityStatus;
  final String shippingInformation;
  final String returnPolicy;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.thumbnail,
    required this.images,
    required this.availabilityStatus,
    required this.shippingInformation,
    required this.returnPolicy,
  });

  factory ProductModel.fromjson(Map<String, dynamic> jsondata) {
    return ProductModel(
      id: jsondata["id"],
      title: jsondata["title"],
      description: jsondata["description"],
      category: jsondata["category"],
      price: (jsondata["price"] as num).toDouble(),
     discountPercentage: (jsondata['discountPercentage'] as num).toDouble(),
      rating: (jsondata['rating'] as num).toDouble(),
      stock: jsondata['stock'],
      brand: jsondata['brand'] ?? '',
      thumbnail: jsondata['thumbnail'],
      images: jsondata["images"],
      availabilityStatus: jsondata["availabilityStatus"],
      shippingInformation: jsondata["shippingInformation"],
      returnPolicy: jsondata["returnPolicy"],
    );
  }
}
