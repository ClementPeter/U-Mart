
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umart/constants.dart';
import 'package:umart/size_config.dart';

class IconButtonWithCounter extends StatelessWidget {
  const IconButtonWithCounter({
    Key? key,
    required this.svg,
    required this.itemNo,
    this.press,
  }) : super(key: key);

  final String svg;
  final int itemNo;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(100),
      child: Stack(
        clipBehavior: Clip.none, //Allows the container to overflow at the top
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(8)),
            height: getProportionateScreenHeight(40),
            width: getProportionateScreenWidth(40),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kSecondaryColor.withOpacity(0.1),
            ),
            child: SvgPicture.asset(svg),
          ),
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: getProportionateScreenHeight(15),
              width: getProportionateScreenWidth(15),
              decoration: BoxDecoration(
                color: const Color(0XFFFF4848),
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  "$itemNo",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                    height: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

