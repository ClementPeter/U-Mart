import 'package:flutter/material.dart';
import 'package:umart/constants.dart';
import 'package:umart/models/product.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umart/size_config.dart';

//Widget Structure for Individual ProjectCards on the App Home Screen /Dashboard
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRatio = 1.25,
    required this.product,
    required this.onpress,
    // required this.onpress
  }) : super(key: key);

  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(20),
        right: getProportionateScreenWidth(5),
      ),
      child: GestureDetector(
        onTap: onpress,
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
                  child: Hero(
                      tag: product.id.toString(),
                      child: Image.asset(product.images[0])),
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
                            ? const Color(0XFFFF4848)
                            : const Color(0XFFDBDEE4),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
