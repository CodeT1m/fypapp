import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fypapp/screens/home/home_screen.dart';
import 'package:fypapp/utilities/styles.dart';

class Onboard extends StatefulWidget {
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final int numOfPages = 3;
  final PageController pageController = PageController(
    initialPage: 0,
  );
  int currentPage = 0;

  List<Widget> buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < numOfPages; i++) {
      list.add(i == currentPage ? indicator(true) : indicator(false));
    }
    return list;
  }

  Widget indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;

    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.4, 0.7, 0.9],
                colors: [
                  Color(0xFF3594DD),
                  Color(0xFF4563DB),
                  Color(0xFF5036D5),
                  Color(0xFF5B16D0),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        }, //go to plant home page
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                    Container(
                      height: hei * 0.75,
                      child: PageView(
                        physics: ClampingScrollPhysics(),
                        controller: pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            currentPage = page;
                          });
                        },
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: AssetImage("lib/images/on1.PNG"),
                                    height: hei * 0.30,
                                    width: wid * 0.50,
                                  ),
                                ),
                                SizedBox(
                                  height: hei * 0.08,
                                ),
                                Text(
                                  "Snap a picture",
                                  style: TextStyles.OnboardTitleText,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  "Take a picture of the diseased plant, or upload one from your gallery.",
                                  style: TextStyles.OnBoardSubText,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: AssetImage("lib/images/on2.png"),
                                    height: hei * 0.30,
                                    width: wid * 0.50,
                                  ),
                                ),
                                SizedBox(
                                  height: hei * 0.08,
                                ),
                                Text(
                                  "See results!",
                                  style: TextStyles.OnboardTitleText,
                                ),
                                SizedBox(height: 30.0),
                                Text(
                                  "Upload the picture of the diseased plant and wait to see the result.",
                                  style: TextStyles.OnBoardSubText,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: AssetImage("lib/images/on3.PNG"),
                                    height: hei * 0.40,
                                    width: wid * 1,
                                  ),
                                ),
                                SizedBox(
                                  height: hei * 0.05,
                                ),
                                Text(
                                  "Get a new experience \n of imgination",
                                  style: TextStyles.OnboardTitleText,
                                ),
                                SizedBox(height: 15.0),
                                Text(
                                  "Search to see more plant diseases and how to control them",
                                  style: TextStyles.OnBoardSubText,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: buildPageIndicator(),
                    ),
                    currentPage != numOfPages - 1
                        ? Expanded(
                            child: Align(
                              alignment: FractionalOffset.bottomRight,
                              child: FlatButton(
                                onPressed: () {
                                  pageController.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      "Next",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22.0),
                                    ),
                                    SizedBox(width: 10.0),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 30.0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Text(""),
                  ]),
            ),
          ),
        ),
        bottomSheet: currentPage == numOfPages - 1
            ? Container(
                height: hei * 0.1,
                width: double.infinity,
                color: Colors.white,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "START DIAGNOSIS",
                        style: TextStyle(
                          color: Color(0xFF5B16D0),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Text(""));
  }
}
