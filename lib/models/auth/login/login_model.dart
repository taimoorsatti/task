class LoginModel {
  String? jwt;
  User? user;

  LoginModel({this.jwt, this.user});

  LoginModel.fromJson(Map<String, dynamic> json) {
    jwt = json['jwt'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jwt'] = this.jwt;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? username;
  String? email;
  String? provider;
  bool? confirmed;
  bool? blocked;
  String? gender;
  String? country;
  String? phone;
  dynamic? description;
  dynamic? skills;
  dynamic? clas;
  dynamic? profilePicture;
  String? createdAt;
  String? updatedAt;
  String? userType;

  User(
      {this.id, this.username, this.email, this.provider, this.confirmed, this.blocked, this.gender, this.country, this.phone, this.description, this.skills, this.clas, this.profilePicture, this.createdAt, this.updatedAt, this.userType});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    provider = json['provider'];
    confirmed = json['confirmed'];
    blocked = json['blocked'];
    gender = json['gender'];
    country = json['country'];
    phone = json['phone'];
    description = json['description'];
    skills = json['skills'];
    clas = json['class'];
    profilePicture = json['profilePicture'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    userType = json['userType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['provider'] = this.provider;
    data['confirmed'] = this.confirmed;
    data['blocked'] = this.blocked;
    data['gender'] = this.gender;
    data['country'] = this.country;
    data['phone'] = this.phone;
    data['description'] = this.description;
    data['skills'] = this.skills;
    data['class'] = this
    .clas;
    data['profilePicture'] = this.profilePicture;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['userType'] = this.userType;
    return data;
    }
}
