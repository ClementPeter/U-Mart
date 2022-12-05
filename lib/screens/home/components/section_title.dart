import 'package:flutter/material.dart';
import 'package:umart/size_config.dart';

//Class that build the tile : Popular Places              see more
class SectionTitle extends StatelessWidget {
  const SectionTitle({
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
          GestureDetector(
            onTap: press,
            child: const Text(
              "See More",
              style: TextStyle(
                color: Color(0xFFBBBBBB),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
