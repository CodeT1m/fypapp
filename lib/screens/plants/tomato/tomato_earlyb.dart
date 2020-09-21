import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class TOMEBdisease extends StatefulWidget {
  @override
  _TOMEBdiseaseState createState() => _TOMEBdiseaseState();
}

class _TOMEBdiseaseState extends State<TOMEBdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tomeb1.JPG',
      img2: 'lib/images/tomato/tomeb2.JPG',
      img3: 'lib/images/tomato/tomeb3.JPG',
      diseaseTitle: "tom_eb",
      diseaseName: getTranslated(context, 'tomato_early_blight'),
      sName: "Alternaria solani.",
      c0: getTranslated(context, 'tomeb0'),
      c1: "1. ${getTranslated(context, 'tomeb1')}",
      c2: "2. ${getTranslated(context, 'tomeb2')}",
      c3: "3. ${getTranslated(context, 'tomeb3')}",
      link: "https://extension.umn.edu/diseases/early-blight-tomato",
    );
  }
}
