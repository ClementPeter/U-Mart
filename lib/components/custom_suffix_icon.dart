import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umart/size_config.dart';

//Class the builds suffix icon - used in textform fields
class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key,
    required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(12),
        getProportionateScreenWidth(15),
        getProportionateScreenWidth(12),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidth(10),
        width: getProportionateScreenWidth(18),
      ),
    );
  }
}
