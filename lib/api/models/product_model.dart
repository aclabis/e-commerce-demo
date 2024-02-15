class ProductModel {
  final int id;
  final String name;
  final String image;
  final DateTime creationAt;
  final DateTime updatedAt;

  ProductModel({
    required this.id,
    required this.name,
    required this.image,
    required this.creationAt,
    required this.updatedAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      creationAt: DateTime.parse(json['creationAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}

class ProductModel1 {
  final int id;
  final String title;  
  final double price;
  final String category;
  final String image;

  ProductModel1({
    required this.id,
    required this.title,
    required this.price,
    required this.category,
    required this.image,
  });

  factory ProductModel1.fromJson(Map<String, dynamic> json) {
    return ProductModel1(
      id: json['id'],
      title: json['title'],
      price: double.parse(
        json['price'].toString(),
      ),
      category: json['category'],
      image: json['image'],
    );
  }
}

