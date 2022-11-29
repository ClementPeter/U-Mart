import 'package:flutter/material.dart';
import 'package:umart/screens/sign_in/components/body.dart';
//import 'package:umart/screens/splash/components/body.dart';
import 'package:umart/size_config.dart';

//Sign-In UI
class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    SizeConfig()
        .init(context); //Size config must be caled on every starting screen
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Sign In',
          style: TextStyle(fontFamily: "Muli"),
        ),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
