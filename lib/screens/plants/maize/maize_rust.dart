import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class MCRdisease extends StatefulWidget {
  @override
  _MCRdiseaseState createState() => _MCRdiseaseState();
}

class _MCRdiseaseState extends State<MCRdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/maize/mcr1.JPG',
      img2: 'lib/images/maize/mcr2.JPG',
      img3: 'lib/images/maize/mcr3.JPG',
      diseaseTitle: "mcr",
      diseaseName: getTranslated(context, 'maize_common_rust'),
      sName: "Puccinia sorghi.",
      c0: getTranslated(context, 'mcr0'),
      c1: "1. ${getTranslated(context, 'mcr1')}",
      c2: "2. ${getTranslated(context, 'mcr2')}",
      c3: "3. ${getTranslated(context, 'mcr3')}",
      link: "https://www.pestnet.org/fact_sheets/maize_common_rust_225.pdf",
    );
  }
}
