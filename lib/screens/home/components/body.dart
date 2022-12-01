import 'package:flutter/material.dart';
import 'package:umart/screens/home/components/categories.dart';
import 'package:umart/screens/home/components/discount_banner.dart';
import 'package:umart/screens/home/components/home_header.dart';
import 'package:umart/screens/home/components/popular_products.dart';
import 'package:umart/screens/home/components/special_offers.dart';
import 'package:umart/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}
