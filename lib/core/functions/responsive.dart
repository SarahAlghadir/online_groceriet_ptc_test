import 'package:flutter/material.dart';

double dp(double input){
  double devicePixelRatio = WidgetsBinding.instance.window.devicePixelRatio;
  double aspectRatio = MediaQueryData.fromView(WidgetsBinding.instance.window).size.aspectRatio;
  double width = MediaQueryData.fromView(WidgetsBinding.instance.window).size.width;
  double height = MediaQueryData.fromView(WidgetsBinding.instance.window).size.height;

  return input * (((height + width) + (devicePixelRatio * aspectRatio)) / 2.08) /
      100;
}