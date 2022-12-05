import 'package:flutter/material.dart';
import 'package:umart/components/product_card.dart';
import 'package:umart/models/product.dart';
import 'package:umart/screens/details/details_screen.dart';
import 'package:umart/screens/home/components/section_title.dart';
import 'package:umart/size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10),
              vertical: getProportionateScreenHeight(10)),
          child: SectionTitle(text: "Popular Product", press: () {}),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular) {
                  //Our product card does the pushing of the prodcut content to the Details Screen under the hood
                  return ProductCard(
                    product: demoProducts[index],
                    onpress: () {
                      Navigator.pushNamed(context, DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                              product: (demoProducts[index]),),);
                    },
                  );
                }
                return const SizedBox.shrink();
              }),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
