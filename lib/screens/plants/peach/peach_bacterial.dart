import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class PBSdisease extends StatefulWidget {
  @override
  _PBSdiseaseState createState() => _PBSdiseaseState();
}

class _PBSdiseaseState extends State<PBSdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/peach/pbs1.JPG',
      img2: 'lib/images/peach/pbs2.JPG',
      img3: 'lib/images/peach/pbs3.JPG',
      diseaseTitle: "pbs",
      diseaseName: getTranslated(context, 'peach_spot'),
      sName: "Xanthomonas camperis pv. pruni.",
      c0: getTranslated(context, 'pbs0'),
      c1: "1. ${getTranslated(context, 'pbs1')}",
      c2: "2. ${getTranslated(context, 'pbs2')}",
      c3: "3. ${getTranslated(context, 'pbs3')}",
      link:
          "https://www.gardeningknowhow.com/edible/fruits/peach/bacterial-spot-on-peach-trees.htm",
    );
  }
}
