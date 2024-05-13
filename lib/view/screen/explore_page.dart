import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceriet_ptc_test/core/constant/color.dart';
import 'package:online_groceriet_ptc_test/core/constant/routes.dart';

import '../../data/datasource/static/static.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 12),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Find Products",
                  style: TextStyle(color: Color(0xff181725), fontSize: 20),
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // number of items in each row
                            mainAxisSpacing: 16.0, // spacing between rows
                            crossAxisSpacing: 16.0, // spacing between columns
                            childAspectRatio: 0.85),
                    padding: const EdgeInsets.all(18.0),
                    // padding around the grid
                    itemCount: categoryList.length,
                    // total number of items
                    itemBuilder: (context, index) {
                      var color = AppColors.colors[index];
                      return GestureDetector(
                        onTap: () => Get.toNamed(AppRoute.products),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: color.withOpacity(.1),
                              border: Border.all(
                                color: color.withOpacity(.7),
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          // margin: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  categoryList[index].image,
                                  height: 95,
                                ),
                                // const SizedBox(height: 20),
                                Text(
                                  categoryList[index].title,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Color(0xff181725),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
