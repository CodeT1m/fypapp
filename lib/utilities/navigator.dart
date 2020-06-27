import 'package:flutter/cupertino.dart';

class MyNavigator{
  static void goToOnboard(BuildContext context){
    Navigator.pushNamed(context, "/onboard");
  }

  static void goToHome(BuildContext context){
    Navigator.pushNamed(context, "/home");
  }
}