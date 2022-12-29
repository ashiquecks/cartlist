import 'dart:convert';

class SampleResponse {
  SampleResponse({
    required this.number,
    required this.productId,
    required this.category,
    required this.subCategory,
    required this.categoryImage,
  });

  String number;
  String productId;
  String category;
  String subCategory;
  String categoryImage;

  factory SampleResponse.fromJson(Map<String, dynamic> json) => SampleResponse(
        number: json["number"],
        productId: json["product_id"],
        category: json["category"],
        subCategory: json["sub_category"],
        categoryImage: json["category_image"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "product_id": productId,
        "category": category,
        "sub_category": subCategory,
        "category_image": categoryImage,
      };
}
