import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class TTMVdisease extends StatefulWidget {
  @override
  _TTMVdiseaseState createState() => _TTMVdiseaseState();
}

class _TTMVdiseaseState extends State<TTMVdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/ttmv1.JPG',
      img2: 'lib/images/tomato/ttmv2.JPG',
      img3: 'lib/images/tomato/ttmv3.JPG',
      diseaseTitle: "t_tmv",
      diseaseName: getTranslated(context, 'tomato_mosaic_virus'),
      sName: "Tobamovirus.",
      c0: getTranslated(context, 'ttmv0'),
      c1: "1. ${getTranslated(context, 'ttmv1')}",
      c2: "2. ${getTranslated(context, 'ttmv2')}",
      c3: "3. ${getTranslated(context, 'ttmv3')}",
      link:
          "https://www.planetnatural.com/pest-problem-solver/plant-disease/mosaic-virus/",
    );
  }
}
