import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class CPMdisease extends StatefulWidget {
  @override
  _CPMdiseaseState createState() => _CPMdiseaseState();
}

class _CPMdiseaseState extends State<CPMdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/cherry/cpm1.JPG',
      img2: 'lib/images/cherry/cpm2.JPG',
      img3: 'lib/images/cherry/cpm3.JPG',
      diseaseTitle: "cpm",
      diseaseName: getTranslated(context, 'cherry_powdery'),
      sName: "Podosphaera clandestina",
      c0: getTranslated(context, 'cpm0'),
      c1: "1. ${getTranslated(context, 'cpm1')}",
      c2: "2. ${getTranslated(context, 'cpm2')}",
      c3: "3. ${getTranslated(context, 'cpm3')}",
      link:
          "https://dengarden.com/gardening/Organic-Methods-of-Exterminating-Powdery-Mildew",
    );
  }
}
