import 'package:flutter/material.dart';
import 'package:umart/size_config.dart';
import 'package:umart/screens/otp/components/body.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    SizeConfig()
        .init(context); //Size config must be called on every starting screen
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OTP Verification',
          style: TextStyle(fontFamily: "Muli"),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
