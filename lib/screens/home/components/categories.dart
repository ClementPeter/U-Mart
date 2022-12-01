import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:umart/size_config.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  List<Map<String, dynamic>> categories = [
    {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
    {"icon": "assets/icons/Bill Icon.svg", "text": "Bills"},
    {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
    {"icon": "assets/icons/Discover.svg", "text": "More"},
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //Normally I would have done it like this
        // CategoriesCard(
        //   icon: categories[0]["icon"],
        //   text: categories[0]["text"],
        //   press: (() {}),
        // ),
        // ),
        // CategoriesCard(
        //   icon: categories[1]["icon"],
        //   text: categories[1]["text"],
        //   press: (() {}),
        // ),
        // CategoriesCard(
        //   icon: categories[2]["icon"],
        //   text: categories[2]["text"],
        //   press: (() {}),
        // ),
        // CategoriesCard(
        //   icon: categories[3]["icon"],
        //   text: categories[3]["text"],
        //   press: (() {}),
        // ),

        ...List.generate(
          categories.length,
          (index) => CategoriesCard(
              text: categories[index]["text"],
              icon: categories[index]["icon"],
              press: () {}),
        )
      ],
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key,
    // required this.categories,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  //final List<Map<String, dynamic>> categories;

  final GestureTapCallback press;
  final String text, icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFECDF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(icon)),
            ),
            const SizedBox(height: 5),
            Text(text)
          ],
        ),
      ),
    );
  }
}
