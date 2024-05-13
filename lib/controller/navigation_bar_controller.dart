import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceriet_ptc_test/core/constant/color.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../view/screen/cart_page.dart';
import '../view/screen/explore_page.dart';
import '../view/screen/favorite_page.dart';
import '../view/screen/profile_page.dart';
import '../view/screen/shop_page.dart';

class NavigationBarController extends GetxController {
  late PersistentTabController controller;

  List<Widget> buildScreens() {
    return const [
      ShopPage(),
      ExplorePage(),
      CartPage(),
      FavoritePage(),
      ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.maps_home_work_outlined),
        title: ("Shop"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.manage_search),
        title: ("Explore"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.shopping_cart_outlined),
        title: ("Cart"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.favorite_border),
        title: ("Favorite"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_2_outlined),
        title: ("Profile"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  void onInit() {
    // TODO: implement onInit
    controller = PersistentTabController(initialIndex: 0);
    super.onInit();
  }
}
