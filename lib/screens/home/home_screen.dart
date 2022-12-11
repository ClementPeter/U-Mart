import 'package:flutter/material.dart';
import 'package:umart/components/custom_nav_bar.dart';
import 'package:umart/enum.dart';
import 'package:umart/size_config.dart';

//import 'components/body.dart';
import 'package:umart/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig()
        .init(context); //Size config must be called on every starting screen
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
