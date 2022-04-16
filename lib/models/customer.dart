class Customer {
 late int id;
 late String name;
 late Null email;
 late String mobile;
 late String gender;
 late bool active;
 late bool verified;
 late int cityId;
 late int storeId;
 late Null fcmToken;
 late String token;
 late String tokenType;
 late String refreshToken;
 late City city;

 Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    gender = json['gender'];
    active = json['active'];
    verified = json['verified'];
    cityId = json['city_id'];
    storeId = json['store_id'];
    fcmToken = json['fcm_token'];
    token = json['token'];
    tokenType = json['token_type'];
    refreshToken = json['refresh_token'];
    city = (json['city']=City.fromJson(json['city']));
  }


}

class City {
  int id =1;
 late String nameEn;
 late String nameAr;



  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameEn = json['name_en'];
    nameAr = json['name_ar'];
  }


}



class Store {
  int? id;
  String? name;
  String? storeName;
  String? email;
  Null? emailVerifiedAt;
  String? mobile;
  String? storeUuid;
  int? cityId;
  Null? verificationCode;
  int? active;
  int? verified;
  Null? firebaseKey;
  Null? image;
  String? address;
  Null? facebook;
  Null? instagram;
  String? createdAt;
  String? updatedAt;

  Store(
      {this.id,
      this.name,
      this.storeName,
      this.email,
      this.emailVerifiedAt,
      this.mobile,
      this.storeUuid,
      this.cityId,
      this.verificationCode,
      this.active,
      this.verified,
      this.firebaseKey,
      this.image,
      this.address,
      this.facebook,
      this.instagram,
      this.createdAt,
      this.updatedAt});

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    storeName = json['store_name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    mobile = json['mobile'];
    storeUuid = json['store_uuid'];
    cityId = json['city_id'];
    verificationCode = json['verification_code'];
    active = json['active'];
    verified = json['verified'];
    firebaseKey = json['firebase_key'];
    image = json['image'];
    address = json['address'];
    facebook = json['facebook'];
    instagram = json['instagram'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

}