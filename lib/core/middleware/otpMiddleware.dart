/*

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/routes.dart';
import '../services/services.dart';

class OtpMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find() ;

  @override
  RouteSettings? redirect(String? route) {
    if(myServices.sharedPreferences.getString("otp") == "1"){
      return const RouteSettings(name: AppRoute.verfiyCodeSignUp) ;
    }
  }
}

*/
