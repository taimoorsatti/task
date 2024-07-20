class AssignmentModel {
  List<Data>? data;
  Meta? meta;

  AssignmentModel({this.data, this.meta});

  AssignmentModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  Attributes? attributes;

  Data({this.id, this.attributes});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    return data;
  }
}

class Attributes {
  String? description;
  String? deadlineTime;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  String? title;
  String? language;
  String? assignedBy;
  bool? isActive;
  File? file;
  File? usersPermissionsUser;
  File? subject;
  File? group;

  Attributes(
      {this.description,
      this.deadlineTime,
      this.createdAt,
      this.updatedAt,
      this.publishedAt,
      this.title,
      this.language,
      this.assignedBy,
      this.isActive,
      this.file,
      this.usersPermissionsUser,
      this.subject,
      this.group});

  Attributes.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    deadlineTime = json['deadlineTime'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    title = json['title'];
    language = json['language'];
    assignedBy = json['assignedBy'];
    isActive = json['isActive'];
    file = json['file'] != null ? new File.fromJson(json['file']) : null;
    usersPermissionsUser = json['users_permissions_user'] != null
        ? new File.fromJson(json['users_permissions_user'])
        : null;
    subject =
        json['subject'] != null ? new File.fromJson(json['subject']) : null;
    group = json['group'] != null ? new File.fromJson(json['group']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['deadlineTime'] = this.deadlineTime;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['publishedAt'] = this.publishedAt;
    data['title'] = this.title;
    data['language'] = this.language;
    data['assignedBy'] = this.assignedBy;
    data['isActive'] = this.isActive;
    if (this.file != null) {
      data['file'] = this.file!.toJson();
    }
    if (this.usersPermissionsUser != null) {
      data['users_permissions_user'] = this.usersPermissionsUser!.toJson();
    }
    if (this.subject != null) {
      data['subject'] = this.subject!.toJson();
    }
    if (this.group != null) {
      data['group'] = this.group!.toJson();
    }
    return data;
  }
}

class File {
  Data? data;

  File({this.data});

  File.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Attributes1 {
  String? name;
  Null? alternativeText;
  Null? caption;
  Null? width;
  Null? height;
  Null? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  Null? previewUrl;
  String? provider;
  Null? providerMetadata;
  String? createdAt;
  String? updatedAt;

  Attributes1(
      {this.name,
      this.alternativeText,
      this.caption,
      this.width,
      this.height,
      this.formats,
      this.hash,
      this.ext,
      this.mime,
      this.size,
      this.url,
      this.previewUrl,
      this.provider,
      this.providerMetadata,
      this.createdAt,
      this.updatedAt});

  Attributes1.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    alternativeText = json['alternativeText'];
    caption = json['caption'];
    width = json['width'];
    height = json['height'];
    formats = json['formats'];
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    size = json['size'];
    url = json['url'];
    previewUrl = json['previewUrl'];
    provider = json['provider'];
    providerMetadata = json['provider_metadata'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['alternativeText'] = this.alternativeText;
    data['caption'] = this.caption;
    data['width'] = this.width;
    data['height'] = this.height;
    data['formats'] = this.formats;
    data['hash'] = this.hash;
    data['ext'] = this.ext;
    data['mime'] = this.mime;
    data['size'] = this.size;
    data['url'] = this.url;
    data['previewUrl'] = this.previewUrl;
    data['provider'] = this.provider;
    data['provider_metadata'] = this.providerMetadata;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class Attributes2 {
  String? username;
  String? email;
  String? provider;
  bool? confirmed;
  bool? blocked;
  String? gender;
  String? country;
  Null? phone;
  String? description;
  String? skills;

  String? clas;
  Null? profilePicture;
  String? createdAt;
  String? updatedAt;
  String? userType;
  double? rating;

  Attributes2(
      {this.username,
      this.email,
      this.provider,
      this.confirmed,
      this.blocked,
      this.gender,
      this.country,
      this.phone,
      this.description,
      this.skills,
      this.clas,
      this.profilePicture,
      this.createdAt,
      this.updatedAt,
      this.userType,
      this.rating});

  Attributes2.fromJson(Map<String, dynamic> json) {
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
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
    data['class'] = this.clas;
    data['profilePicture'] = this.profilePicture;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['userType'] = this.userType;
    data['rating'] = this.rating;
    return data;
  }
}

class Attributes3 {
  String? name;
  int? price;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;

  Attributes3(
      {this.name,
      this.price,
      this.createdAt,
      this.updatedAt,
      this.publishedAt});

  Attributes3.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['price'] = this.price;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['publishedAt'] = this.publishedAt;
    return data;
  }
}

class Attributes4 {
  String? title;
  String? caption;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;

  Attributes4(
      {this.title,
      this.caption,
      this.createdAt,
      this.updatedAt,
      this.publishedAt});

  Attributes4.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    caption = json['caption'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['caption'] = this.caption;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['publishedAt'] = this.publishedAt;
    return data;
  }
}

class Meta {
  Pagination? pagination;

  Meta({this.pagination});

  Meta.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    return data;
  }
}

class Pagination {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  Pagination({this.page, this.pageSize, this.pageCount, this.total});

  Pagination.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    pageSize = json['pageSize'];
    pageCount = json['pageCount'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['pageSize'] = this.pageSize;
    data['pageCount'] = this.pageCount;
    data['total'] = this.total;
    return data;
  }
}

class Attributes5 {
  String? description;
  String? deadlineTime;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  String? title;
  String? language;
  String? assignedBy;
  bool? isActive;
  File? file;
  File? usersPermissionsUser;
  File? subject;
  File? group;

  Attributes5(
      {this.description,
      this.deadlineTime,
      this.createdAt,
      this.updatedAt,
      this.publishedAt,
      this.title,
      this.language,
      this.assignedBy,
      this.isActive,
      this.file,
      this.usersPermissionsUser,
      this.subject,
      this.group});

  Attributes5.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    deadlineTime = json['deadlineTime'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    title = json['title'];
    language = json['language'];
    assignedBy = json['assignedBy'];
    isActive = json['isActive'];
    file = json['file'] != null ? new File.fromJson(json['file']) : null;
    usersPermissionsUser = json['users_permissions_user'] != null
        ? new File.fromJson(json['users_permissions_user'])
        : null;
    subject =
        json['subject'] != null ? new File.fromJson(json['subject']) : null;
    group = json['group'] != null ? new File.fromJson(json['group']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['deadlineTime'] = this.deadlineTime;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['publishedAt'] = this.publishedAt;
    data['title'] = this.title;
    data['language'] = this.language;
    data['assignedBy'] = this.assignedBy;
    data['isActive'] = this.isActive;
    if (file != null) {
      data['file'] = this.file!.toJson();
    }
    if (usersPermissionsUser != null) {
      data['users_permissions_user'] = this.usersPermissionsUser!.toJson();
    }
    if (subject != null) {
      data['subject'] = this.subject!.toJson();
    }
    if (group != null) {
      data['group'] = this.group!.toJson();
    }
    return data;
  }
}
