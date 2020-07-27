import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class ASdisease extends StatefulWidget {
  @override
  _ASdiseaseState createState() => _ASdiseaseState();
}

class _ASdiseaseState extends State<ASdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/apple/as1.JPG',
      img2: 'lib/images/apple/as2.JPG',
      img3: 'lib/images/apple/as3.JPG',
      diseaseTitle: "as",
      diseaseName: "Apple - Apple Scab",
      sName: "Venturia inaequalis",
      c0: "Apple Scab is caused by the fungus \'Venturia inaequalis\', which spreads by airborne spores.",
      c1: "1. Sanitation and resistance breeding.",
      c2: "2. Fungicide or biocontrol tratments to prevent the spread.",
      c3: "3. Destroy infected leaves or fruits to reduce number of fungal spores.",
      link:
          "https://www.planetnatural.com/pest-problem-solver/plant-disease/apple-scab/",
    );
  }
}
