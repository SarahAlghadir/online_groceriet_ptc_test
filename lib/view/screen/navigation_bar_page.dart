import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceriet_ptc_test/controller/navigation_bar_controller.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavigationBarPage extends StatelessWidget {
  const NavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    NavigationBarController exploreController =
        Get.put(NavigationBarController());
    return PersistentTabView(
      context,
      controller: exploreController.controller,
      screens: exploreController.buildScreens(),
      items: exploreController.navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.linear,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
