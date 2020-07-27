import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

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
      diseaseName: "Grape Leaf blight",
      sName: "Pseudocercospora vitis.",
      c0: "Grape Leaf blight (Isariopsis leaf spot) is a disease caused by a fungal plant pathogen called Pseudocercospora vitis.",
      c1: "1. Applying of dormant sprays to reduce inoculum levels.",
      c2: "2. Cut out diseased canes and clusters and pruning out dead wood will both help.",
      c3: "3. Use protectants and systemic fungicides such as mancozeb and ziram.",
      link: "https://www.goodfruit.com/11-tips-to-beat-grape-fungal-diseases/",
    );
  }
}
