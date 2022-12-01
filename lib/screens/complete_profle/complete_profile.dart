import 'package:flutter/material.dart';
import 'package:umart/screens/complete_profle/components/body.dart';
import 'package:umart/size_config.dart';

//Complete Profile Screen of the App : Where more info is collected
class CompleteProfileScreen extends StatelessWidget {
  static String routeName =
      "/complete_profile"; //Static helps us to call this property without creating an instance of the object

  const CompleteProfileScreen({Key? key}) : super(key: key);

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
