



import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umart/constants.dart';
import 'package:umart/screens/home/components/icon_button_with_counter.dart';
import 'package:umart/screens/home/components/search_field.dart';
import 'package:umart/size_config.dart';



class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
          ),
          child: const SearchField(),
        ),
        IconButtonWithCounter(
          svg: "assets/icons/Bell.svg",
          itemNo: 3,
          press: () {},
        ),
        IconButtonWithCounter(
          svg: "assets/icons/Cart Icon.svg",
          itemNo: 3,
          press: () {},
        ),
      ],
    );
  }
}