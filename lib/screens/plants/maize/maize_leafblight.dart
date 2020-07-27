import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class MLBdisease extends StatefulWidget {
  @override
  _MLBdiseaseState createState() => _MLBdiseaseState();
}

class _MLBdiseaseState extends State<MLBdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/maize/mLb1.JPG',
      img2: 'lib/images/maize/mLb2.JPG',
      img3: 'lib/images/maize/mLb3.JPG',
      diseaseTitle: "mLb",
      diseaseName: "Maize Northern leaf blight",
      sName: "Exserohilum turcicum.",
      c0: "Northern corn leaf blight (NCLB) is a foliar disease of corn (maize) caused by \'Exserohilum turcicum\', this disease can cause significant yield loss in susceptible corn hybrids.",
      c1: "1. Use of resistant varieties is the best way of managing rust diseases: partial resistant and qualitative resistance.",
      c2: "2. Before planting, choose hybrid varieties with known resistance to maize northern leaf blight. This is the most important way of managing the disease.",
      c3: "3. During growth, control weeds especially grasses that might be alternative hosts of the fungus.",
      link:
          "https://www.pestnet.org/fact_sheets/maize_northern_leaf_blight_226.htm",
    );
  }
}
