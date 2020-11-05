import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class TOMLBdisease extends StatefulWidget {
  @override
  _TOMLBdiseaseState createState() => _TOMLBdiseaseState();
}

class _TOMLBdiseaseState extends State<TOMLBdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tomLb1.JPG',
      img2: 'lib/images/tomato/tomLb2.JPG',
      img3: 'lib/images/tomato/tomLb3.JPG',
      diseaseTitle: "tom_Lb",
      diseaseName: getTranslated(context, 'tomato_late_blight'),
      sName: "Phytophthora infestans.",
      c0: getTranslated(context, 'tomlb0'),
      c1: "1. ${getTranslated(context, 'tomlb1')}",
      c2: "2. ${getTranslated(context, 'tomlb2')}",
      c3: "3. ${getTranslated(context, 'tomlb3')}",
      link:
          "https://extension.umn.edu/diseases/late-blight#:~:text=Late%20blight%20is%20a%20potentially,famine%20of%20the%20late%201840s.",
    );
  }
}
