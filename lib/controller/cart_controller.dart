import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/assets.dart';
import '../data/model/item_model.dart';

class CartController extends GetxController {
  late TextEditingController name;
  late TextEditingController description;
  late TextEditingController price;
  late TextEditingController image;
  List<ItemModel> itemCartList = [
    ItemModel(
        name: "Bell Pepper Red",
        image: AppImageAsset.c1,
        description: "1kg, Price",
        price: "\$4.99"),
    ItemModel(
        name: "Egg Chicken Red",
        image: AppImageAsset.c2,
        description: "4pcs, Price",
        price: "\$1.99"),
    ItemModel(
        name: "Organic Bananas",
        image: AppImageAsset.c3,
        description: "12kg, Price",
        price: "\$3.00"),
    ItemModel(
        name: "Ginger",
        image: AppImageAsset.c4,
        description: "250gm, Price",
        price: "\$2.99"),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    name = TextEditingController();
    description = TextEditingController();
    price = TextEditingController();
    image = TextEditingController();
    super.onInit();
  }
}
