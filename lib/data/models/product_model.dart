class ProductModel {
  final int id;
  final String name;
  final String code;
  final String createdAt;

  ProductModel({
    required this.id,
    required this.name,
    required this.code,
    required this.createdAt,
  });

  ProductModel copyWith({
    int? id,
    String? name,
    String? code,
    String? createdAt,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      code: json['code'] ?? '',
      createdAt: json['createdAt'] ?? '',
    );
  }

  @override
  String toString() {
    return """
    id: $id,
    name: $name,
    code: $code,
    createdAt: $createdAt
    """;
  }
}
