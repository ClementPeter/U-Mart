import 'package:flutter/material.dart';
import 'package:umart/constants.dart';

import 'package:umart/models/cart.dart';

import 'package:umart/size_config.dart';

// Individual card on the cart ui page
class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(80),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0XFFF5F6F9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(cart.product!.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product!.title,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 20),
            Text.rich(
              TextSpan(
                text: "\$${cart.product!.price}",
                children: [
                  TextSpan(
                    text: " x${cart.numOfItems}",
                    style: TextStyle(color: kTextColor),
                  )
                ],
              ),
              style: TextStyle(color: kPrimaryColor),
            ),
          ],
        )
      ],
    );
  }
}
