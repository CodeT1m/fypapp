import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class SQUPMdisease extends StatefulWidget {
  @override
  _SQUPMdiseaseState createState() => _SQUPMdiseaseState();
}

class _SQUPMdiseaseState extends State<SQUPMdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/squash/squpm1.JPG',
      img2: 'lib/images/squash/squpm2.JPG',
      img3: 'lib/images/squash/squpm3.JPG',
      diseaseTitle: "squ_pm",
      diseaseName: getTranslated(context, 'squash_powdery'),
      sName: "Pseudocercospora vitis.",
      c0: getTranslated(context, 'squpm0'),
      c1: "1. ${getTranslated(context, 'squpm1')}",
      c2: "2. ${getTranslated(context, 'squpm2')}",
      c3: "3. ${getTranslated(context, 'squpm3')}",
      link:
          "https://extension.umn.edu/diseases/powdery-mildew-cucurbits#:~:text=Powdery%20mildew%2C%20mainly%20caused%20by,reduce%20yield%20and%20fruit%20quality.",
    );
  }
}
