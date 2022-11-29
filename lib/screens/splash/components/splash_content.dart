import 'package:flutter/material.dart';
import 'package:umart/constants.dart';
import 'package:umart/size_config.dart';

//Structure for splash screen contains - Text and Image
class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);

  //Splash content parameters
  final String? text;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Spacer(),
        Text(
          'Umart',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(32),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
 
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(12), 
          ),
        ),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
