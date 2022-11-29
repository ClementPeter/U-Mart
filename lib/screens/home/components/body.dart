import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umart/constants.dart';
import 'package:umart/screens/home/components/discount_banner.dart';
import 'package:umart/screens/home/components/home_header.dart';
import 'package:umart/screens/home/components/icon_button_with_counter.dart';
import 'package:umart/screens/home/components/search_field.dart';
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
        ],
      )),
    );
  }
}
