import 'package:flutter/material.dart';
import 'package:umart/screens/login_success/components/body.dart';

//Login Success Splash Imageen UI
class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);

  static String routeName = "/login_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Success',
          style: TextStyle(fontFamily: "Muli"),
        ),
        leading: const SizedBox(height: 50, width: 50),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
