import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/assets.dart';
import '../data/model/item_model.dart';

class ProductController extends GetxController {
  late TextEditingController name;
  late TextEditingController description;
  late TextEditingController price;
  late TextEditingController image;
  List<ItemModel> productsList = [
    ItemModel(
        name: "Diet Coke",
        image: AppImageAsset.p1,
        description: "325ml, Price",
        price: "\$1.99"),
    ItemModel(
        name: "Sprite Can",
        image: AppImageAsset.p2,
        description: "325ml, Price",
        price: "\$1.50"),
    ItemModel(
        name: "Apple & Grape \nJuice",
        image: AppImageAsset.p3,
        description: "2L, Price",
        price: "\$5.99"),
    ItemModel(
        name: "Orenge Juice",
        image: AppImageAsset.p4,
        description: "2L, Price",
        price: "\$8.99"),
    ItemModel(
        name: "Coca Cola Can",
        image: AppImageAsset.p5,
        description: "325ml, Price",
        price: "\$4.99"),
    ItemModel(
        name: "Pepsi Can ",
        image: AppImageAsset.p6,
        description: "330ml, Price",
        price: "\$4.99"),
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
