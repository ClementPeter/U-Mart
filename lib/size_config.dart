import 'package:flutter/material.dart';

//class that handles responsiveness of the app
class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenHeight;
  static late double screenWidth;
  static double? defaultSize;
  static Orientation? orientation;
  BuildContext? context;

  //make static if performance issues are noticed
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

//Tip for using these 2 comrades - if u need to change icon/svg "height" use the width function

// use to get the estimate height/spacing of the widget wrt to the screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that was used in the design
  
  return (inputHeight / 812.0) * screenHeight;
   // return (inputHeight / MediaQuery.of(context).size.height) * screenHeight;
}

// use to get the estimate width of the widget wrt to the screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that was used in the design
  return (inputWidth / 375.0) * screenWidth;
}
