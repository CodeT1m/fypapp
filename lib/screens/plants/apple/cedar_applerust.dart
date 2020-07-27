import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class ARdisease extends StatefulWidget {
  @override
  _ARdiseaseState createState() => _ARdiseaseState();
}

class _ARdiseaseState extends State<ARdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/apple/ar1.JPG',
      img2: 'lib/images/apple/ar2.JPG',
      img3: 'lib/images/apple/ar3.JPG',
      diseaseTitle: "ar",
      diseaseName: "Apple - Cedar Apple Rust",
      sName: "Gymnosporangium juniperi-virginianae",
      c0: "Cedar apple rust is caused by a fungal pathogen called \'Gymnosporangium juniperi-virginianae\'.",
      c1: "1. Remove galls from infected junipers. In some cases, remove the juniper plants entirely.",
      c2: "2. Application of fungicides (in July and August) to the junipers before and while they are in the infectious reduces the severity of the outbreak.",
      c3: "3. Remove cedars located within a 1 mile (1.6 km) radius of the apples to interrupt the disease cycle.",
      link: "https://extension.umn.edu/plant-diseases/cedar-apple-rust",
    );
  }
}
