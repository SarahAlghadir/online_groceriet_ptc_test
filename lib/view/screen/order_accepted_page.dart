import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/assets.dart';
import '../../core/constant/color.dart';
import '../../core/constant/routes.dart';

class OrderAcceptedPage extends StatelessWidget {
  const OrderAcceptedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Image.asset(
                AppImageAsset.acceptedOrder,
                scale: 2.5,
              ),
              const SizedBox(height: 50),
              const Text(
                "Your Order has been accepted",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff181725), fontSize: 28),
              ),
              const SizedBox(height: 6),
              const Text(
                "Your items has been placcd and is on \nit’s way to being processed",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff7c7c7c), fontSize: 16),
              ),
              const SizedBox(height: 100),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.primaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
                  maximumSize: MaterialStateProperty.all(const Size(350, 67)),
                  fixedSize: MaterialStateProperty.all(const Size(350, 67)),
                  minimumSize: MaterialStateProperty.all(const Size(350, 67)),
                ),
                onPressed: () {},
                child: const Text(
                  "Track Order",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xffFFF9FF), fontSize: 18),
                ),
              ),
              const SizedBox(height: 12),
              TextButton(
                  onPressed: () => Get.offNamed(AppRoute.navigationBar),
                  child: const Text(
                    "Back to home",
                    style: TextStyle(color: Color(0xff181725), fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
