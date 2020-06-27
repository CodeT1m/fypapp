import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fypapp/splashscreen/onboard.dart';
import 'package:fypapp/utilities/navigator.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState()=> _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), ()=>MyNavigator.goToOnboard(context));
  }

  @override
  // TODO: implement widget
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.greenAccent
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.greenAccent,
                          size: 50.0,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Text("AGRIKai",
                        style: TextStyle(
                          color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                )
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Text("Detect First, Eat More",
                    style: TextStyle(
                          color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold
                        ),
                  )
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}