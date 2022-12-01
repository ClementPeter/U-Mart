import 'package:flutter/material.dart';
import 'package:umart/size_config.dart';

//import 'components/body.dart';
import 'package:umart/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig()
        .init(context); //Size config must be called on every starting screen
    return Scaffold(
      body: Body(),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}