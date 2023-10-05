class CartModel {
  List<CartData>? data;

  CartModel({this.data});

  CartModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <CartData>[];
      json['data'].forEach((v) {
        data!.add(new CartData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CartData {
  int id = 0;
  int productId = 0;
  Product? product;
  int userId = 0;
  int price = 0;
  int type = 0;
  int subscription = 0;

  CartData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['productId'];
    product =
        json['product'] != null ? new Product.fromJson(json['product']) : null;
    userId = json['userId'];
    price = json['price'];
    type = json['type'];
    subscription = json['subscription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['productId'] = this.productId;
    if (this.product != null) {
      data['product'] = this.product!.toJson();
    }
    data['userId'] = this.userId;
    data['price'] = this.price;
    data['type'] = this.type;
    data['subscription'] = this.subscription;
    return data;
  }
}

class Product {
  int id = 0;
  int userId = 0;
  int subjectId = 0;
  int levelId = 0;
  int classroomId = 0;
  String semesterId = '';
  int notebookType = 0;
  String name = '';
  String description = '';
  String slug = '';
  String details = '';
  String thumbnails = '';
  String file = '';
  Null? video;
  int price = 0;
  int discount = 0;
  int special = 0;
  int status = 0;
  Null? deletedAt;
  String createdAt = '';
  String updatedAt = '';

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    subjectId = json['subject_id'];
    levelId = json['level_id'];
    classroomId = json['classroom_id'];
    semesterId = json['semester_id'];
    notebookType = json['notebook_type'];
    name = json['name'];
    description = json['description'];
    slug = json['slug'];
    details = json['details'];
    thumbnails = json['thumbnails'];
    file = json['file'];
    video = json['video'];
    price = json['price'];
    discount = json['discount'];
    special = json['special'];
    status = json['status'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['subject_id'] = this.subjectId;
    data['level_id'] = this.levelId;
    data['classroom_id'] = this.classroomId;
    data['semester_id'] = this.semesterId;
    data['notebook_type'] = this.notebookType;
    data['name'] = this.name;
    data['description'] = this.description;
    data['slug'] = this.slug;
    data['details'] = this.details;
    data['thumbnails'] = this.thumbnails;
    data['file'] = this.file;
    data['video'] = this.video;
    data['price'] = this.price;
    data['discount'] = this.discount;
    data['special'] = this.special;
    data['status'] = this.status;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
