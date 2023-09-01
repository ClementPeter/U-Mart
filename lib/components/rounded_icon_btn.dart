import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

//Custom Round button - used in detail section for product increment and decrement
class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.press,
    required this.iconData,
    this.showShadow = false,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;
  final bool showShadow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(30),
      width: getProportionateScreenWidth(30),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            if (showShadow)
              BoxShadow(
                offset: const Offset(0, 6),
                blurRadius: 10,
                color: const Color(0xFFB0B0B0).withOpacity(0.2),
              ),
          ],
        ),
        child: TextButton(
          style: TextButton.styleFrom(
              foregroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
              backgroundColor: Colors.white,
              padding: EdgeInsets.zero),
          onPressed: press,
          child: Icon(iconData),
        ),
      ),
    );
  }
}
