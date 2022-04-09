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