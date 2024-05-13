import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './core/constant/theme.dart';
import './routes.dart';
import './view/screen/navigation_bar_page.dart';

Future<void> main() async {
  /* WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      title: 'Flutter Demo',
      getPages: routes,
      home: const NavigationBarPage(),
    );
  }
}
