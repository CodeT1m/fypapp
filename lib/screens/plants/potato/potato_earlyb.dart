import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class POEBdisease extends StatefulWidget {
  @override
  _POEBdiseaseState createState() => _POEBdiseaseState();
}

class _POEBdiseaseState extends State<POEBdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/potato/poeb1.JPG',
      img2: 'lib/images/potato/poeb2.JPG',
      img3: 'lib/images/potato/poeb3.JPG',
      diseaseTitle: "po_eb",
      diseaseName: getTranslated(context, 'potato_early_blight'),
      sName: "Alternaria solani.",
      c0: getTranslated(context, 'poeb0'),
      c1: "1. ${getTranslated(context, 'poeb1')}",
      c2: "2. ${getTranslated(context, 'poeb2')}",
      c3: "3. ${getTranslated(context, 'poeb3')}",
      link:
          "https://www.planetnatural.com/pest-problem-solver/plant-disease/early-blight/",
    );
  }
}
