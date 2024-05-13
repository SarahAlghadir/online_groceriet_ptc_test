import 'package:flutter/material.dart';

import '../../core/constant/assets.dart';
import '../../core/constant/color.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImageAsset.onBoardingImage))),
        child: Stack(
          children: [
            Positioned(
              top: 454.03,
              child: Container(
                width: 414,
                height: 441.97,
                decoration: BoxDecoration(
                    // color: Colors.pink,
                    backgroundBlendMode: BlendMode.overlay,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xffE172700).withOpacity(0),
                          const Color(0xff858585)
                        ])),
                child: Column(
                  children: [
                    Image.asset(
                      AppImageAsset.carrot,
                      scale: 1.8,
                    ),
                    const Text(
                      "Welcome \n to our store",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 48),
                    ),
                    Text(
                      "Ger your groceries in as fast as one hour",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: const Color(0xffFCFCFC).withOpacity(0.7),
                          fontSize: 16),
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                        width: 353,
                        height: 67,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.primaryColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ))),
                          onPressed: () {},
                          child: const Text(
                            "Get Started",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
