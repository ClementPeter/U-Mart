import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umart/components/default_button.dart';
import 'package:umart/constants.dart';
import 'package:umart/screens/cart/components/body.dart';
import 'package:umart/screens/cart/components/check_out_card.dart';

import '../../models/cart.dart';
import '../../size_config.dart';

//Login Success Splash Imageen UI
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static String routeName = "/cart ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: const CheckOutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            'Your Cart',
            ///// style: TextStyle(k),
            style: TextStyle(fontFamily: "Muli", color: Colors.black),
          ),
          Text('${demoCarts.length} items',
              style: const TextStyle(
                fontFamily: "Muli",
                color: kTextColor,
              )

              //style: Theme.of(context).textTheme.caption,
              // style: TextStyle(fontFamily: "Muli"),
              ),
        ],
      ),
      //leading: const SizedBox(height: 50, width: 50),
      centerTitle: true,
    );
  }
}

