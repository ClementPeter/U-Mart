import 'package:flutter/material.dart';
import 'package:umart/screens/sign_up/components/body.dart';

//Sign Up UI
class SignUpScreeen extends StatelessWidget {
  const SignUpScreeen({Key? key}) : super(key: key);

  static String routeName = "/sign_up";  //Route Nanme

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text(
          'Sign Up',
          style: TextStyle(fontFamily: "Muli"),
        ),
        centerTitle: true,

      ),
      body:  const  Body(),
    );
  }
}
