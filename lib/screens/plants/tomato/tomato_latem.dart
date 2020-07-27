import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class TOMLMdisease extends StatefulWidget {
  @override
  _TOMLMdiseaseState createState() => _TOMLMdiseaseState();
}

class _TOMLMdiseaseState extends State<TOMLMdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tomLm1.JPG',
      img2: 'lib/images/tomato/tomLm2.JPG',
      img3: 'lib/images/tomato/tomLm3.JPG',
      diseaseTitle: "tom_Lm",
      diseaseName: "Tomato Leaf Mold",
      sName: "Passalora fulva.",
      c0: "Tomato leaf mold is a disease caused by a fungal plant pathogen called \'Passalora fulva\'.",
      c1: "1. Space plants to provide good air movement between rows and individual plants.",
      c2: "2. Use drip irrigation and avoid watering foliage.",
      c3: "3. Remove crop residue at the end of the season. Burn it or bury it away from tomato production areas.",
      link: "https://extension.umn.edu/diseases/leaf-mold-tomato",
    );
  }
}
