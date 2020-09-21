import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class ABRdisease extends StatefulWidget {
  @override
  _ABRdiseaseState createState() => _ABRdiseaseState();
}

class _ABRdiseaseState extends State<ABRdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/apple/abr1.JPG',
      img2: 'lib/images/apple/abr2.JPG',
      img3: 'lib/images/apple/abr3.JPG',
      diseaseTitle: "abr",
      diseaseName: getTranslated(context, 'apple_black_rot'),
      sName: "Diplodia seriata",
      c0: getTranslated(context, 'abr0'),
      c1: "1. ${getTranslated(context, 'abr1')}",
      c2: "2. ${getTranslated(context, 'abr2')}",
      c3: "3. ${getTranslated(context, 'abr3')}",
      link: "https://extension.umn.edu/plant-diseases/black-rot-apple",
    );
  }
}
