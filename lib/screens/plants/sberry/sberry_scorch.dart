import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class SBERRYLSdisease extends StatefulWidget {
  @override
  _SBERRYLSdiseaseState createState() => _SBERRYLSdiseaseState();
}

class _SBERRYLSdiseaseState extends State<SBERRYLSdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/sberry/sberryLs1.JPG',
      img2: 'lib/images/sberry/sberryLs2.JPG',
      img3: 'lib/images/sberry/sberryLs3.JPG',
      diseaseTitle: "sberry_Ls",
      diseaseName: getTranslated(context, 'strawberry_leaf'),
      sName: "Diplocarpon earliana.",
      c0: getTranslated(context, 'sberryls0'),
      c1: "1. ${getTranslated(context, 'sberryls1')}",
      c2: "2. ${getTranslated(context, 'sberryls2')}",
      c3: "3. ${getTranslated(context, 'sberryls3')}",
      link:
          "https://www.gardeningknowhow.com/edible/fruits/strawberry/strawberries-with-leaf-scorch.htm#:~:text=Scorched%20strawberry%20leaves%20are%20caused,on%20the%20topside%20of%20leaves.",
    );
  }
}
