import 'package:flutter/material.dart';
import 'package:umart/components/product_card.dart';
import 'package:umart/models/product.dart';
import 'package:umart/screens/home/components/section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          SectionTile(text: "Popular Product", press: () {}),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
