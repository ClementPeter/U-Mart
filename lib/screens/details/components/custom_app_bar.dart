import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umart/components/rounded_icon_btn.dart';
import 'package:umart/size_config.dart';
import '../../../constants.dart';
import '../../../models/product.dart';

class CustomAppBar extends StatelessWidget {
  // const CustomAppBar({Key? key}) : super(key: key);
  final double? rating;

  const CustomAppBar({super.key, this.rating});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  // Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height)
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            RoundedIconBtn(
              showShadow: true,
              iconData: Icons.arrow_back_ios,
              press: () => Navigator.pop(context),
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    "$rating",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset("assets/icons/Star Icon.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
