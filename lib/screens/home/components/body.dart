import 'package:flutter/material.dart';
import 'package:umart/components/product_card.dart';
import 'package:umart/constants.dart';
import 'package:umart/models/product.dart';
import 'package:umart/screens/home/components/categories.dart';

import 'package:umart/screens/home/components/discount_banner.dart';
import 'package:umart/screens/home/components/home_header.dart';
import 'package:umart/screens/home/components/popular_products.dart';
import 'package:umart/screens/home/components/section_title.dart';
import 'package:umart/screens/home/components/special_offers.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:umart/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: getProportionateScreenWidth(20)),
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(30)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenHeight(30)),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}



//
//
//A Mobile E-commerce platform, for purchasing tech gadgets and accessories
//


//




//