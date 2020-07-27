import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class TOMEBdisease extends StatefulWidget {
  @override
  _TOMEBdiseaseState createState() => _TOMEBdiseaseState();
}

class _TOMEBdiseaseState extends State<TOMEBdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tomeb1.JPG',
      img2: 'lib/images/tomato/tomeb2.JPG',
      img3: 'lib/images/tomato/tomeb3.JPG',
      diseaseTitle: "tom_eb",
      diseaseName: "Tomato Early blight",
      sName: "Alternaria solani.",
      c0: "Tomato early blight is a fungal disease caused by a fungal pathogen called \'Alternaria solani\' which can lead to severe defoliation and result in sunscald of the fruit.",
      c1: "1. Avoid working in plants when they are wet from rain, irrigation, or dew.",
      c2: "2. In the fall, remove or bury infected plants to reduce the likelihood of the pathogen surviving to the following year.",
      c3: "3. Use drip irrigation instead of overhead irrigation to keep foliage dry.",
      link: "https://extension.umn.edu/diseases/early-blight-tomato",
    );
  }
}
