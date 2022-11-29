import 'package:flutter/material.dart';
import 'package:umart/components/default_button.dart';
import 'package:umart/size_config.dart';

import '../../home/home_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Expanded(
          child: Image.asset(
            "assets/images/success.png",
            fit: BoxFit.contain,

            height: SizeConfig.screenHeight * 0.5, //40% of the screen
          ),
        ),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(14),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(80),
              vertical: getProportionateScreenWidth(50)),
          child: DefaultButton(
            text: 'Back to Home',
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        )
      ],
    );
  }
}
