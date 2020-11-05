import 'package:flutter/material.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';
import 'package:fypapp/screens/plants/apple/apple_blackrot.dart';
import 'package:fypapp/screens/plants/apple/apple_scab.dart';
import 'package:fypapp/screens/plants/apple/cedar_applerust.dart';
import 'package:fypapp/screens/rectangle.dart';

class AppleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Rectangle(
              diseaseTitle: "abr",
              diseaseName: getTranslated(context, 'apple_black_rot'),
              image: "lib/images/apple/abr1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ABRdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "as",
              diseaseName: getTranslated(context, 'apple_scab'),
              image: "lib/images/apple/as1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ASdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "ar",
              diseaseName: getTranslated(context, 'apple_rust'),
              image: "lib/images/apple/ar1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ARdisease()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
