import 'package:flutter/material.dart';
import 'package:umart/components/default_button.dart';
import 'package:umart/screens/otp/components/otp_form.dart';
import 'package:umart/size_config.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Text(
                  "OTP Verification",
                  style: headingStyle,
                ),
                const Text(
                  "We sent your code to +234 118 680 *** enter your email and we will send \nyou a link to return your account",
                  textAlign: TextAlign.center,
                ),
                buildTimer(),
                const OTPform(),
                SizedBox(height: SizeConfig.screenHeight * 0.15),
                DefaultButton(
                  text: "Continue",
                  press: () {},
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.15),
                const Text(
                  "Resend OTP Code",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //30 sec OTP Expiration Timer
  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: ((context, value, child) {
            return Text("00:${value.toInt()}");
          }),
        )
      ],
    );
  }
}
