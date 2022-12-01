 import 'package:flutter/material.dart';
import 'package:umart/constants.dart';
import 'package:umart/models/product.dart';
import 'package:umart/screens/home/components/categories.dart';

import 'package:umart/screens/home/components/discount_banner.dart';
import 'package:umart/screens/home/components/home_header.dart';
import 'package:umart/screens/home/components/section_title.dart';
import 'package:umart/screens/home/components/special_offers.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:umart/size_config.dart';




class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRatio = 1.25,
    required this.product,
  }) : super(key: key);

  final double width, aspectRatio;

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(20),
        right: getProportionateScreenWidth(20),
      ),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: aspectRatio,
              child: Container(
                padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(20),
                  right: getProportionateScreenWidth(20),
                ),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(product.images[0]),
              ),
            ),
            Text(
              product.title,
              style: const TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                    width: getProportionateScreenWidth(28),
                    height: getProportionateScreenHeight(28),
                    decoration: BoxDecoration(
                      color: product.isFavourite
                          ? kPrimaryColor.withOpacity(0.15)
                          : kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg",
                      color: product.isFavourite
                          ? Color(0XFFFF4848)
                          : Color(0XFFDBDEE4),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
