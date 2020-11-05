import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class TTYdisease extends StatefulWidget {
  @override
  _TTYdiseaseState createState() => _TTYdiseaseState();
}

class _TTYdiseaseState extends State<TTYdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tty1.JPG',
      img2: 'lib/images/tomato/tty2.JPG',
      img3: 'lib/images/tomato/tty3.JPG',
      diseaseTitle: "t_ty",
      diseaseName: getTranslated(context, 'tomato_yellow'),
      sName: "Begomovirus.",
      c0: getTranslated(context, 'tty0'),
      c1: "1. ${getTranslated(context, 'tty1')}",
      c2: "2. ${getTranslated(context, 'tty2')}",
      c3: "3. ${getTranslated(context, 'tty3')}",
      link:
          "https://www2.ipm.ucanr.edu/agriculture/tomato/Tomato-Yellow-Leaf-Curl/",
    );
  }
}
