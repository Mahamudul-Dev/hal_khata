class ProductModel {
  String? status;
  List<Products>? products;

  ProductModel({this.status, this.products});

  ProductModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? id;
  String? productName;
  String? image;
  int? retailPrice;
  int? wholesalePrice;
  int? stock;
  String? category;
  String? unit;

  Products(
      {this.id,
      this.productName,
      this.image,
      this.retailPrice,
      this.wholesalePrice,
      this.stock,
      this.category,
      this.unit});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['product_name'];
    image = json['image'];
    retailPrice = json['retail_price'];
    wholesalePrice = json['wholesale_price'];
    stock = json['stock'];
    category = json['category'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product_name'] = productName;
    data['image'] = image;
    data['retail_price'] = retailPrice;
    data['wholesale_price'] = wholesalePrice;
    data['stock'] = stock;
    data['category'] = category;
    data['unit'] = unit;
    return data;
  }
}
