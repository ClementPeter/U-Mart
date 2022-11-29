import 'package:flutter/material.dart';
import 'package:umart/components/default_button.dart';
import 'package:umart/constants.dart';
import 'package:umart/screens/sign_in/sign_in_screen.dart';
import 'package:umart/screens/splash/components/splash_content.dart';
import 'package:umart/size_config.dart';

//Body of splash screen
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  //List that contains splash screen contents text and images as Map
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Umart, Let's shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people connect with store \naround Australia",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We are the easiest way to shop. \nCome shop with us",
      "image": "assets/images/splash_3.png"
    }
  ];

  //used to update our custom dot indicator
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Spacer(),
          Expanded(
            flex: 3,
            //PageVeiw allows scrollable splash screen page
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (content, index) => SplashContent(
                text: splashData[index]['text'],
                image: splashData[index]['image'],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: [
                  const Spacer(),
                  //List.generate  creates more dot on demand using splashData.lenght
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index),
                    ),
                  ),
                  const Spacer(flex: 3),
                  DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      }), //Custom button
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  //// Animated container gives our dot indicator a bit of animation
  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        //color: kPrimaryColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
