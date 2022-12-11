import 'package:flutter/material.dart';
import 'package:umart/components/custom_nav_bar.dart';
import 'package:umart/enum.dart';
import 'package:umart/screens/profile/components/body.dart';

//Sign Up UI
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String routeName = "/profile"; //Route Nanme

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        title: const Text(
          'Profile',
          style: TextStyle(fontFamily: "Muli"),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
      body: const Body(),
    );
  }
}
