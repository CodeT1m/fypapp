import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class POLBdisease extends StatefulWidget {
  @override
  _POLBdiseaseState createState() => _POLBdiseaseState();
}

class _POLBdiseaseState extends State<POLBdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/potato/poLb1.JPG',
      img2: 'lib/images/potato/poLb2.JPG',
      img3: 'lib/images/potato/poLb3.JPG',
      diseaseTitle: "po_Lb",
      diseaseName: getTranslated(context, 'potato_late_blight'),
      sName: "Phytophthora infestans.",
      c0: getTranslated(context, 'polb0'),
      c1: "1. ${getTranslated(context, 'polb1')}",
      c2: "2. ${getTranslated(context, 'polb2')}",
      c3: "3. ${getTranslated(context, 'polb3')}",
      link: "https://www.ag.ndsu.edu/publications/crops/late-blight-in-potato",
    );
  }
}
