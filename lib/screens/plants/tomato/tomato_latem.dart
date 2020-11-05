import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class TOMLMdisease extends StatefulWidget {
  @override
  _TOMLMdiseaseState createState() => _TOMLMdiseaseState();
}

class _TOMLMdiseaseState extends State<TOMLMdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tomLm1.JPG',
      img2: 'lib/images/tomato/tomLm2.JPG',
      img3: 'lib/images/tomato/tomLm3.JPG',
      diseaseTitle: "tom_Lm",
      diseaseName: getTranslated(context, 'tomato_late_mold'),
      sName: "Passalora fulva.",
      c0: getTranslated(context, 'tomlm0'),
      c1: "1. ${getTranslated(context, 'tomlm1')}",
      c2: "2. ${getTranslated(context, 'tomlm2')}",
      c3: "3. ${getTranslated(context, 'tomlm3')}",
      link: "https://extension.umn.edu/diseases/leaf-mold-tomato",
    );
  }
}
