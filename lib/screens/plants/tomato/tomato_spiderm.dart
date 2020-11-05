import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class TSMTdisease extends StatefulWidget {
  @override
  _TSMTdiseaseState createState() => _TSMTdiseaseState();
}

class _TSMTdiseaseState extends State<TSMTdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tsmt1.JPG',
      img2: 'lib/images/tomato/tsmt2.JPG',
      img3: 'lib/images/tomato/tsmt3.JPG',
      diseaseTitle: "t_smt",
      diseaseName: getTranslated(context, 'tomato_spider_mite'),
      sName: "Pseudocercospora vitis.",
      c0: getTranslated(context, 'tsmt0'),
      c1: "1. ${getTranslated(context, 'tsmt1')}",
      c2: "2. ${getTranslated(context, 'tsmt2')}",
      c3: "3. ${getTranslated(context, 'tsmt3')}",
      link:
          "https://homeguides.sfgate.com/avoid-spider-mites-tomato-garden-73368.html#:~:text=Spider%20mites%20(Tetranychus%20spp.),pest%20problems%20of%20tomato%20plants.",
    );
  }
}
