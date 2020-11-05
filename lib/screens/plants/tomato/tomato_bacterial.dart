import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class TOMBSdisease extends StatefulWidget {
  @override
  _TOMBSdiseaseState createState() => _TOMBSdiseaseState();
}

class _TOMBSdiseaseState extends State<TOMBSdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tombs1.JPG',
      img2: 'lib/images/tomato/tombs2.JPG',
      img3: 'lib/images/tomato/tombs3.JPG',
      diseaseTitle: "tom_bs",
      diseaseName: getTranslated(context, 'tomato_bacterial_spot'),
      sName: "Xanthomonas vesicatoria",
      c0: getTranslated(context, 'tombs0'),
      c1: "1. ${getTranslated(context, 'tombs1')}",
      c2: "2. ${getTranslated(context, 'tombs2')}",
      c3: "3. ${getTranslated(context, 'tombs3')}",
      link:
          "https://extension.umn.edu/diseases/bacterial-spot-tomato-and-pepper#cultural-control-1875511",
    );
  }
}
