import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class ARdisease extends StatefulWidget {
  @override
  _ARdiseaseState createState() => _ARdiseaseState();
}

class _ARdiseaseState extends State<ARdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/apple/ar1.JPG',
      img2: 'lib/images/apple/ar2.JPG',
      img3: 'lib/images/apple/ar3.JPG',
      diseaseTitle: "ar",
      diseaseName: getTranslated(context, 'apple_rust'),
      sName: "Gymnosporangium juniperi-virginianae",
      c0: getTranslated(context, 'ar0'),
      c1: "1. ${getTranslated(context, 'ar1')}",
      c2: "2. ${getTranslated(context, 'ar2')}",
      c3: "3. ${getTranslated(context, 'ar3')}",
      link: "https://extension.umn.edu/plant-diseases/cedar-apple-rust",
    );
  }
}
