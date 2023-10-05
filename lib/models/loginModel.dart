class LoginModel {
  bool? status;
  String token = '';

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
  }
}
