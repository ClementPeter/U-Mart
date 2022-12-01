import 'package:flutter/material.dart';
import 'package:umart/screens/home/components/categories.dart';

import 'package:umart/screens/home/components/discount_banner.dart';
import 'package:umart/screens/home/components/home_header.dart';

import 'package:umart/size_config.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              color: Colors.black,
            ),
          ),
          GestureDetector(onTap: press, child: Text("See More")),
        ],
      ),
    );
  }
}
