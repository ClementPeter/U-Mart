import 'package:flutter/material.dart';
import 'package:umart/screens/sign_up/sign_up_screen.dart';
import '../constants.dart';
import '../size_config.dart';

//widgets that shows "Dont have an account" on Auth Screens
class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(12)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreeen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(12),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
