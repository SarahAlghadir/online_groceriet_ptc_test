import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/products_controller.dart';
import '../../core/constant/color.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xff181725),
        // titleSpacing: 10,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  iconSize: MaterialStateProperty.all(20),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  maximumSize: MaterialStateProperty.all(const Size(30, 30)),
                  fixedSize: MaterialStateProperty.all(const Size(30, 30)),
                  minimumSize: MaterialStateProperty.all(const Size(30, 30)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.primaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ))),
              onPressed: () {
                Get.bottomSheet(
                  isDismissible: false,
                  barrierColor: Colors.transparent,
                  isScrollControlled: true,
                  Container(
                    height: 500,
                    decoration: const BoxDecoration(
                      color: Color(0xffF2F3F2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Add",
                                style: TextStyle(
                                  color: Color(0xff181725),
                                  fontSize: 24,
                                ),
                              ),
                              IconButton(
                                  onPressed: Get.back,
                                  icon: const Icon(Icons.close))
                            ],
                          ),
                          Divider(
                              color: const Color(0xffE2E2E2).withOpacity(.7)),
                          TextFormField(
                            controller: productController.name,
                            enabled: false,
                            decoration: InputDecoration(
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xffE2E2E2)
                                          .withOpacity(.7))),
                              labelText: 'Name',
                              labelStyle: const TextStyle(
                                color: Color(0xff7C7C7C),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: productController.name,
                            enabled: false,
                            decoration: InputDecoration(
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xffE2E2E2)
                                          .withOpacity(.7))),
                              labelText: 'Description',
                              labelStyle: const TextStyle(
                                color: Color(0xff7C7C7C),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: productController.name,
                            enabled: false,
                            decoration: InputDecoration(
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xffE2E2E2)
                                          .withOpacity(.7))),
                              labelText: 'Price',
                              labelStyle: const TextStyle(
                                color: Color(0xff7C7C7C),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: productController.name,
                            enabled: false,
                            decoration: InputDecoration(
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xffE2E2E2)
                                          .withOpacity(.7))),
                              labelText: 'Image',
                              labelStyle: const TextStyle(
                                color: Color(0xff7C7C7C),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.primaryColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )),
                              maximumSize: MaterialStateProperty.all(
                                  const Size(350, 67)),
                              fixedSize: MaterialStateProperty.all(
                                  const Size(350, 67)),
                              minimumSize: MaterialStateProperty.all(
                                  const Size(350, 67)),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Add Item",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffFFF9FF), fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: const Icon(
                Icons.add,
              ),
            ),
          )
        ],
        title: const Text(
          "Beverages",
          style: TextStyle(
            color: Color(0xff181725),
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // number of items in each row
              mainAxisSpacing: 16.0, // spacing between rows
              crossAxisSpacing: 16.0, // spacing between columns
              childAspectRatio: 0.74),
          padding: const EdgeInsets.all(18.0),
          // padding around the grid
          itemCount: productController.productsList.length,
          // total number of items
          itemBuilder: (context, index) {
            var color = const Color(0xffE2E2E2);
            return Container(
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: color,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0, 6),
                      blurRadius: 12,
                    )
                  ],
                  borderRadius: BorderRadius.circular(20)),
              // margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(
                  left: 18, right: 18, top: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      productController.productsList[index].image,
                    ),
                  ),
                  Text(
                    productController.productsList[index].name,
                    style: const TextStyle(
                      color: Color(0xff181725),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 82,
                    child: Text(
                      productController.productsList[index].description,
                      style: const TextStyle(
                        color: Color(0xff7C7C7C),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productController.productsList[index].price,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xff181725),
                          fontSize: 16,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            iconSize: MaterialStateProperty.all(30),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            maximumSize:
                                MaterialStateProperty.all(const Size(45, 45)),
                            fixedSize:
                                MaterialStateProperty.all(const Size(45, 45)),
                            minimumSize:
                                MaterialStateProperty.all(const Size(45, 45)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.primaryColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ))),
                        onPressed: () {},
                        child: const Icon(
                          Icons.add,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
