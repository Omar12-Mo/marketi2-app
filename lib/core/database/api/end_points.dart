class EndPoints {
  //base Url
  static const String baseUrl = "https://marketi-api.onrender.com";
  //auth
  static const String signUp = "/auth/signUp";
  static const String signIn = "/auth/signIn";

  //portfoilo
  static const String userData = "/portfoilo/userData";
  static const String addImage = "/portfoilo/addImage";
  static const String editUserData = "/portfoilo/editUserData";

  //home_products
  static const String getAllProducts = "/home/products?skip=0&limit=10";
  static const String getAllProductsWithSorting = "";
  static const String getSingleProduct = "/home/products/1";
  static String getProductsByCatagory({required String catagory}) {
    return "/home/products/category/$catagory?skip=0&limit=5";
  }

  static String getProductsByBrand({required String brand}) {
    return "/home/products/category/$brand?skip=0&limit=5";
  }

  static const String searchProducts = "/home/productsFilter";
}

class ApiKey {
  static const message = "message";
  static const statusCode = "";
}
