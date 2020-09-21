import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class GLBdisease extends StatefulWidget {
  @override
  _GLBdiseaseState createState() => _GLBdiseaseState();
}

class _GLBdiseaseState extends State<GLBdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/grape/gLb1.JPG',
      img2: 'lib/images/grape/gLb2.JPG',
      img3: 'lib/images/grape/gLb3.JPG',
      diseaseTitle: "g_Lb",
      diseaseName: getTranslated(context, 'grape_leaf_blight'),
      sName: "Pseudocercospora vitis.",
      c0: getTranslated(context, 'glb0'),
      c1: "1. ${getTranslated(context, 'glb1')}",
      c2: "2. ${getTranslated(context, 'glb2')}",
      c3: "3. ${getTranslated(context, 'glb3')}",
      link: "https://www.goodfruit.com/11-tips-to-beat-grape-fungal-diseases/",
    );
  }
}
