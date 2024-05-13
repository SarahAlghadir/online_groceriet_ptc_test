import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/cart_controller.dart';
import '../../core/constant/color.dart';
import '../../core/constant/routes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xff181725),
        // titleSpacing: 10,
        title: const Text(
          "My Cart",
          style: TextStyle(
            color: Color(0xff181725),
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: cartController.itemCartList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 130,
                  margin:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                  // padding: const EdgeInsets.only(
                  //     left: 18, right: 18, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          fit: BoxFit.cover,
                          cartController.itemCartList[index].image,
                          width: 80,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            cartController.itemCartList[index].name,
                            style: const TextStyle(
                              color: Color(0xff181725),
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            cartController.itemCartList[index].description,
                            style: const TextStyle(
                              color: Color(0xff7C7C7C),
                              fontSize: 14,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FilledButton(
                                style: ButtonStyle(
                                    iconSize: MaterialStateProperty.all(30),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.zero),
                                    maximumSize: MaterialStateProperty.all(
                                        const Size(45, 45)),
                                    fixedSize: MaterialStateProperty.all(
                                        const Size(45, 45)),
                                    minimumSize: MaterialStateProperty.all(
                                        const Size(45, 45)),
                                    iconColor: MaterialStateProperty.all<Color>(
                                        const Color(0xffB3B3B3)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0xfff8f8f8)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xffF0F0F0)),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ))),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                              const SizedBox(
                                  height: 45,
                                  width: 45,
                                  child: Center(child: Text("1"))),
                              FilledButton(
                                style: ButtonStyle(
                                    iconSize: MaterialStateProperty.all(30),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.zero),
                                    maximumSize: MaterialStateProperty.all(
                                        const Size(45, 45)),
                                    fixedSize: MaterialStateProperty.all(
                                        const Size(45, 45)),
                                    minimumSize: MaterialStateProperty.all(
                                        const Size(45, 45)),
                                    iconColor: MaterialStateProperty.all<Color>(
                                        AppColors.primaryColor),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0xfff8f8f8)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xffF0F0F0)),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ))),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            cartController.itemCartList[index].price,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xff181725),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(color: Color(0xffE2E2E2))
              ],
            );
          },
        ),
      ),
      floatingActionButton: FilledButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            maximumSize: MaterialStateProperty.all(const Size(364, 67)),
            fixedSize: MaterialStateProperty.all(const Size(364, 67)),
            minimumSize: MaterialStateProperty.all(const Size(364, 67)),
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.primaryColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              side: const BorderSide(color: Color(0xffF0F0F0)),
              borderRadius: BorderRadius.circular(15.0),
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
                          "Checkout",
                          style: TextStyle(
                            color: Color(0xff181725),
                            fontSize: 24,
                          ),
                        ),
                        IconButton(
                            onPressed: Get.back, icon: const Icon(Icons.close))
                      ],
                    ),
                    const CheckoutItem(
                      title: 'Delivery',
                      value: 'Select Method',
                    ),
                    const CheckoutItem(
                      title: 'Pament',
                      value: '',
                      icon: Icons.credit_card,
                    ),
                    const CheckoutItem(
                      title: 'Promo Code',
                      value: 'Pick discount',
                    ),
                    const CheckoutItem(
                      title: 'Total Cost',
                      value: '\$13.97',
                    ),
                    const SizedBox(height: 14),
                    RichText(
                      text: TextSpan(
                          text: 'By placing an order you agree to our',
                          style: const TextStyle(
                              color: Color(0xff7C7C7C), fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Terms',
                                style: const TextStyle(
                                    color: Color(0xff181725), fontSize: 14),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }),
                            TextSpan(
                                text: ' And ',
                                style: const TextStyle(
                                    color: Color(0xff7C7C7C), fontSize: 14),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }),
                            TextSpan(
                                text: ' Conditions',
                                style: const TextStyle(
                                    color: Color(0xff181725), fontSize: 14),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }),
                          ]),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.primaryColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                        maximumSize:
                            MaterialStateProperty.all(const Size(350, 67)),
                        fixedSize:
                            MaterialStateProperty.all(const Size(350, 67)),
                        minimumSize:
                            MaterialStateProperty.all(const Size(350, 67)),
                      ),
                      onPressed: () => Get.offNamed(AppRoute.acceptedOrder),
                      child: const Text(
                        "Place Order",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Color(0xffFFF9FF), fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: const Text(
          "Go to Checkout",
          style: TextStyle(
            color: Color(0xfffcfcfc),
            fontSize: 18,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class CheckoutItem extends StatelessWidget {
  const CheckoutItem({
    super.key,
    required this.title,
    required this.value,
    this.icon,
  });

  final String title;
  final String value;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, color: Color(0xff7C7C7C)),
            ),
            Spacer(),
            value != ''
                ? Text(
                    value,
                    style:
                        const TextStyle(fontSize: 16, color: Color(0xff181725)),
                  )
                : Icon(icon),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
          ],
        ),
        Divider(color: const Color(0xffE2E2E2).withOpacity(.7)),
      ],
    );
  }
}
