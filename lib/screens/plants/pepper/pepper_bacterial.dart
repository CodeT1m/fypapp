import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class PPBSdisease extends StatefulWidget {
  @override
  _PPBSdiseaseState createState() => _PPBSdiseaseState();
}

class _PPBSdiseaseState extends State<PPBSdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/pepper/ppbs1.JPG',
      img2: 'lib/images/pepper/ppbs2.JPG',
      img3: 'lib/images/pepper/ppbs3.JPG',
      diseaseTitle: "pp_bs",
      diseaseName: getTranslated(context, 'pepper_spot'),
      sName: "Xanthomonas campestris pv. vesicatoria.",
      c0: getTranslated(context, 'ppbs0'),
      c1: "1. ${getTranslated(context, 'ppbs0')}",
      c2: "2. ${getTranslated(context, 'ppbs1')}",
      c3: "3. ${getTranslated(context, 'ppbs2')}",
      link:
          "https://extension.umd.edu/hgic/topics/bacterial-leaf-spot-pepper-vegetables#:~:text=Common%20Pepper%20Disease,a%20symptom%20of%20bacterial%20spot.&text=Bacterial%20leaf%20spot%20is%20spread,working%20with%20wet%2C%20infected%20plants.",
    );
  }
}
