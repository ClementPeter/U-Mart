import 'package:flutter/material.dart';
import 'package:umart/components/default_button.dart';
import 'package:umart/screens/details/components/counter_color_dots.dart';
import 'package:umart/screens/details/components/product_description.dart';
import 'package:umart/screens/details/components/product_image.dart';
import 'package:umart/screens/details/components/top_rounded_container.dart';
import 'package:umart/size_config.dart';
import '../../../models/product.dart';

//Main Body of Detail Page
class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(40)),
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressToSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: const Color(0XFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          top: getProportionateScreenHeight(100),
                        ),
                        child: DefaultButton(
                          text: "Add to Cart",
                          press: () {},
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
