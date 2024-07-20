class RegisterModel {
  String? jwt;
  User? user;

  RegisterModel({this.jwt, this.user});

  RegisterModel.fromJson(Map<String, dynamic> json) {
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
  String? createdAt;
  String? updatedAt;
  String? type;
  String? gender;
  String? country;
  Null? phone;
  String? description;
  String? skills;
  String? clas;
  Null? profilePicture;
  Role? role;

  User(
      {this.id,
      this.username,
      this.email,
      this.provider,
      this.confirmed,
      this.blocked,
      this.createdAt,
      this.updatedAt,
      this.type,
      this.gender,
      this.country,
      this.phone,
      this.description,
      this.skills,
      this.clas,
      this.profilePicture,
      this.role});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    provider = json['provider'];
    confirmed = json['confirmed'];
    blocked = json['blocked'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    type = json['type'];
    gender = json['gender'];
    country = json['country'];
    phone = json['phone'];
    description = json['description'];
    skills = json['skills'];
    clas = json['class'];
    profilePicture = json['profilePicture'];
    role = json['role'] != null ? new Role.fromJson(json['role']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['provider'] = this.provider;
    data['confirmed'] = this.confirmed;
    data['blocked'] = this.blocked;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['type'] = this.type;
    data['gender'] = this.gender;
    data['country'] = this.country;
    data['phone'] = this.phone;
    data['description'] = this.description;
    data['skills'] = this.skills;
    data['class'] = this.clas;
    data['profilePicture'] = this.profilePicture;
    if (this.role != null) {
      data['role'] = this.role!.toJson();
    }
    return data;
  }
}

class Role {
  int? id;
  String? name;
  String? description;
  String? type;
  String? createdAt;
  String? updatedAt;

  Role(
      {this.id,
      this.name,
      this.description,
      this.type,
      this.createdAt,
      this.updatedAt});

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    type = json['type'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['type'] = this.type;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
