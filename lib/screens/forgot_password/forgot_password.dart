import 'package:flutter/material.dart';
import 'package:umart/size_config.dart';
import 'package:umart/screens/forgot_password/components/body.dart';

//Forgot Password Screen
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forgot_password";

  @override
  Widget build(BuildContext context) {
    SizeConfig()
        .init(context); //Size config must be called on every starting screen
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forgot Password',
          style: TextStyle(fontFamily: "Muli"),
        ),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
