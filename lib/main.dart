import 'package:flutter/material.dart';
import 'package:umart/routes.dart';
import 'package:umart/screens/profile/profie_screen.dart';
import 'package:umart/screens/splash/splash_screen.dart';
import 'package:umart/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UMART',
       theme: theme(),
       initialRoute: SplashScreen.routeName,  
      routes: routes,
    );
  }
}
