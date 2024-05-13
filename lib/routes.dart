import 'package:get/get.dart';

import './core/constant/routes.dart';
import './view/screen/navigation_bar_page.dart';
import './view/screen/order_accepted_page.dart';
import './view/screen/products_page.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: AppRoute.products, page: () => const ProductsPage()),
  GetPage(name: AppRoute.acceptedOrder, page: () => const OrderAcceptedPage()),
  GetPage(name: AppRoute.navigationBar, page: () => const NavigationBarPage()),
];
