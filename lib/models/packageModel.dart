class PackageModel {
  List<PackageData>? data;

  PackageModel({this.data});

  PackageModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <PackageData>[];
      json['data'].forEach((v) {
        data!.add(new PackageData.fromJson(v));
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

class PackageData {
  int packageId = 0;
  Level? level;
  Classroom? classroom;
  int semesterId = 0;
  String name = '';
  String image = '';
  String description = '';
  int type = 0;
  int price = 0;
  List<Products>? products;
  int productsCount = 0;
  String status = '';

  PackageData.fromJson(Map<String, dynamic> json) {
    packageId = json['packageId'];
    level = json['level'] != null ? new Level.fromJson(json['level']) : null;
    classroom = json['classroom'] != null
        ? new Classroom.fromJson(json['classroom'])
        : null;
    semesterId = json['semesterId'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
    type = json['type'];
    price = json['price'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
    productsCount = json['productsCount'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['packageId'] = this.packageId;
    if (this.level != null) {
      data['level'] = this.level!.toJson();
    }
    if (this.classroom != null) {
      data['classroom'] = this.classroom!.toJson();
    }
    data['semesterId'] = this.semesterId;
    data['name'] = this.name;
    data['image'] = this.image;
    data['description'] = this.description;
    data['type'] = this.type;
    data['price'] = this.price;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['productsCount'] = this.productsCount;
    data['status'] = this.status;
    return data;
  }
}

class Level {
  int id = 0;
  String name = '';
  String slug = '';
  int sort = 0;

  Level.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    sort = json['sort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['sort'] = this.sort;
    return data;
  }
}

class Classroom {
  int id = 0;
  int levelId = 0;
  String image = '';
  String name = '';
  String slug = '';

  Classroom.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    levelId = json['levelId'];
    image = json['image'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['levelId'] = this.levelId;
    data['image'] = this.image;
    data['name'] = this.name;
    data['slug'] = this.slug;
    return data;
  }
}

class Products {
  int notebookId = 0;
  int userId = 0;
  Subject? subject;
  Level? level;
  Classroom? classroom;
  String semesterId = '';
  int courseType = 0;
  String name = '';
  String slug = '';
  String description = '';
  String details = '';
  String thumbnail = '';
  String file = '';
  String video = '';
  int price = 0;
  int special = 0;
  int discount = 0;
  int status = 0;
  int courseId = 0;
  int paid = 0;

  Products.fromJson(Map<String, dynamic> json) {
    notebookId = json['notebookId'];
    userId = json['userId'];
    subject =
        json['subject'] != null ? new Subject.fromJson(json['subject']) : null;
    level = json['level'] != null ? new Level.fromJson(json['level']) : null;
    classroom = json['classroom'] != null
        ? new Classroom.fromJson(json['classroom'])
        : null;
    semesterId = json['semesterId'];
    courseType = json['courseType'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    details = json['details'];
    thumbnail = json['thumbnail'];
    file = json['file'];
    video = json['video'];
    price = json['price'];
    special = json['special'];
    discount = json['discount'];
    status = json['status'];
    courseId = json['courseId'];
    paid = json['paid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['notebookId'] = this.notebookId;
    data['userId'] = this.userId;
    if (this.subject != null) {
      data['subject'] = this.subject!.toJson();
    }
    if (this.level != null) {
      data['level'] = this.level!.toJson();
    }
    if (this.classroom != null) {
      data['classroom'] = this.classroom!.toJson();
    }
    data['semesterId'] = this.semesterId;
    data['courseType'] = this.courseType;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['description'] = this.description;
    data['details'] = this.details;
    data['thumbnail'] = this.thumbnail;
    data['file'] = this.file;
    data['video'] = this.video;
    data['price'] = this.price;
    data['special'] = this.special;
    data['discount'] = this.discount;
    data['status'] = this.status;
    data['courseId'] = this.courseId;
    data['paid'] = this.paid;
    return data;
  }
}

class Subject {
  int id = 0;
  String name = '';
  String slug = '';
  String image = '';

  Subject.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['image'] = this.image;
    return data;
  }
}
