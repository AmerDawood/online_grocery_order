import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Categories extends GetxController {
 late int id;
 late String nameEn;
 late String nameAr;
 late String image;
 dynamic productsCount;
 dynamic subCategoriesCount;
 late String imageUrl;


 Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameEn = json['name_en'];
    nameAr = json['name_ar'];
    image = json['image'];
    productsCount = json['products_count'];
    subCategoriesCount = json['sub_categories_count'];
    imageUrl = json['image_url'];
  }


}