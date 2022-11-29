import 'package:flutter/material.dart';
import 'package:umart/screens/splash/components/body.dart';
import 'package:umart/size_config.dart';

//Splash Screen of the App
class SplashScreen extends StatelessWidget {
  static String routeName =
      "/splash"; //Static helps us to call this property without creating an instance of the object

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig()
        .init(context); //Size config must be caled on every starting screen
    return const Scaffold(
      body: Body(),
    );
  }
}
