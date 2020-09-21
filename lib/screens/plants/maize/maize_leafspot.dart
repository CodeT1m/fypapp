import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class MLSdisease extends StatefulWidget {
  @override
  _MLSdiseaseState createState() => _MLSdiseaseState();
}

class _MLSdiseaseState extends State<MLSdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/maize/mLs1.JPG',
      img2: 'lib/images/maize/mLs2.JPG',
      img3: 'lib/images/maize/mLs3.JPG',
      diseaseTitle: "mLs",
      diseaseName: getTranslated(context, 'maize_spot'),
      sName: "Cercospora zeae-maydis.",
      c0: getTranslated(context, 'mls0'),
      c1: "1. ${getTranslated(context, 'mls1')}",
      c2: "2. ${getTranslated(context, 'mls2')}",
      c3: "3. ${getTranslated(context, 'mls3')}",
      link:
          "https://cropwatch.unl.edu/plantdisease/sugarbeet/cercospora-leaf-spot",
    );
  }
}
