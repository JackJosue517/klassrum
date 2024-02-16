import 'package:flutter/cupertino.dart';

class AppConfig{
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;

  static void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }

}


double getHeight(double inputHeight){
  double screenHeight = AppConfig.screenHeight;
  return (inputHeight/812)*screenHeight;
}

double getWidth(double inputwidth){
  double screenWidth = AppConfig.screenWidth;
  return (inputwidth/375)*screenWidth;
}

double getSize(double px){
  var height = getHeight(px);
  var width = getWidth(px);
  if(height<width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}