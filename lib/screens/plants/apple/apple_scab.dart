import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class ASdisease extends StatefulWidget {
  @override
  _ASdiseaseState createState() => _ASdiseaseState();
}

class _ASdiseaseState extends State<ASdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/apple/as1.JPG',
      img2: 'lib/images/apple/as2.JPG',
      img3: 'lib/images/apple/as3.JPG',
      diseaseTitle: "as",
      diseaseName: getTranslated(context, 'apple_scab'),
      sName: "Venturia inaequalis",
      c0: getTranslated(context, 'as0'),
      c1: "1. ${getTranslated(context, 'as1')}",
      c2: "2. ${getTranslated(context, 'as2')}",
      c3: "3. ${getTranslated(context, 'as3')}",
      link:
          "https://www.planetnatural.com/pest-problem-solver/plant-disease/apple-scab/",
    );
  }
}
