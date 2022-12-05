import 'package:flutter/material.dart';
import 'package:umart/screens/complete_profle/complete_profile.dart';
import 'package:umart/screens/details/details_screen.dart';
import 'package:umart/screens/forgot_password/forgot_password.dart';
import 'package:umart/screens/home/home_screen.dart';
import 'package:umart/screens/login_success/login_success.dart';
import 'package:umart/screens/otp/otp_screen.dart';
import 'package:umart/screens/sign_in/sign_in_screen.dart';
import 'package:umart/screens/sign_up/sign_up_screen.dart';
import 'package:umart/screens/splash/splash_screen.dart';

//Use for passing direct routing / navigation to various screens in our app
final Map<String, WidgetBuilder> routes = {
  //Normally "routes" takes key:value pair - thus "screen".routeName then returns its screen
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreeen.routeName: (context) => const SignUpScreeen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OTPScreen.routeName: (context) => const OTPScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen()
};
