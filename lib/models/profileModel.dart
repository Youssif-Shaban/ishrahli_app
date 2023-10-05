class ProfileModel {
  ProfileData? data;

  ProfileModel({this.data});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new ProfileData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class ProfileData {
  int userId = 0;
  String firstName = "";
  String lastName = "";
  Null? email;
  String phone = "";
  int countryCode = 0;
  String avatar = "";
  Info? info;

  ProfileData.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    phone = json['phone'];
    countryCode = json['countryCode'];
    avatar = json['avatar'];
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['countryCode'] = this.countryCode;
    data['avatar'] = this.avatar;
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    return data;
  }
}

class Info {
  int id = 0;
  String gender = "";
  Null? level;
  Null? classroom;
  String location = "";
  String city = "";
  String street = "";
  String subStreet = "";
  String home = "";
  String piece = "";

  Info.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gender = json['gender'];
    level = json['level'];
    classroom = json['classroom'];
    location = json['location'];
    city = json['city'];
    street = json['street'];
    subStreet = json['subStreet'];
    home = json['home'];
    piece = json['piece'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['gender'] = this.gender;
    data['level'] = this.level;
    data['classroom'] = this.classroom;
    data['location'] = this.location;
    data['city'] = this.city;
    data['street'] = this.street;
    data['subStreet'] = this.subStreet;
    data['home'] = this.home;
    data['piece'] = this.piece;
    return data;
  }
}
