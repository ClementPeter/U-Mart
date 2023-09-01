import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umart/constants.dart';
import 'package:umart/enum.dart';
import 'package:umart/screens/home/home_screen.dart';
import 'package:umart/screens/profile/profie_screen.dart';

//Custom implementation of BottomNavBar - Not the best approach cos it stacks screen ontop themselves
class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0XFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Shop Icon.svg",
              color: MenuState.home == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Heart Icon.svg",
              // color: selectedMenu == MenuState.favorite
              //     ? kPrimaryColor
              //     : inActiveIconColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Chat bubble Icon.svg",
              // color: selectedMenu == MenuState.message
              //     ? kPrimaryColor
              //     : inActiveIconColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/User Icon.svg",
              color: MenuState.profile == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
              // color: MenuState.profile == selectedMenu
              //     ? kPrimaryColor
              //     : inActiveIconColor,
            ),
            onPressed: () =>
                Navigator.pushNamed(context, ProfileScreen.routeName),
          ),
        ],
      ),
    );
  }
}
