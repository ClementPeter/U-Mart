import 'package:flutter/material.dart';
import 'package:umart/screens/login_success/components/body.dart';

//Login Success Splash Imageen UI
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static String routeName = "/cart ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text(
              'Your Cart',
              // style: TextStyle(fontFamily: "Muli"),
            ),
            const Text(
              '4 items',
              // style: TextStyle(fontFamily: "Muli"),
            ),
          ],
        ),
        //leading: const SizedBox(height: 50, width: 50),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
