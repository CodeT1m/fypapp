import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class MLBdisease extends StatefulWidget {
  @override
  _MLBdiseaseState createState() => _MLBdiseaseState();
}

class _MLBdiseaseState extends State<MLBdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/maize/mLb1.JPG',
      img2: 'lib/images/maize/mLb2.JPG',
      img3: 'lib/images/maize/mLb3.JPG',
      diseaseTitle: "mLb",
      diseaseName: getTranslated(context, 'maize_blight'),
      sName: "Exserohilum turcicum.",
      c0: getTranslated(context, 'mlb0'),
      c1: "1. ${getTranslated(context, 'mlb1')}",
      c2: "2. ${getTranslated(context, 'mlb2')}",
      c3: "3. ${getTranslated(context, 'mlb3')}",
      link:
          "https://www.pestnet.org/fact_sheets/maize_northern_leaf_blight_226.htm",
    );
  }
}
