import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

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
      diseaseName: "Tomato Bacterial spot",
      sName: "Xanthomonas vesicatoria",
      c0: "Tomato bacterial spot is caused by four species of \'Xanthomonas\'.",
      c1: "1. Remove symptomatic plants from the field to prevent the spread of bacteria to healthy plants.",
      c2: "2. Burn or bury the affected plants and DO NOT eat symptomatic fruit.",
      c3: "3. Hot water treatment can be used to kill bacteria on and in seed.",
      link:
          "https://extension.umn.edu/diseases/bacterial-spot-tomato-and-pepper#cultural-control-1875511",
    );
  }
}
