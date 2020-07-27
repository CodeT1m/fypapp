import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class ABRdisease extends StatefulWidget {
  @override
  _ABRdiseaseState createState() => _ABRdiseaseState();
}

class _ABRdiseaseState extends State<ABRdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/apple/abr1.JPG',
      img2: 'lib/images/apple/abr2.JPG',
      img3: 'lib/images/apple/abr3.JPG',
      diseaseTitle: "abr",
      diseaseName: "Apple - Black rot",
      sName: "Diplodia seriata",
      c0: "Black rot is caused by the fungus \'Diplodia seriata\' (syn Botryosphaeria obtusa).\n A fungal disease that requires juniper plants to complete its complicated two year life-cycle.",
      c1: "1. Remove cankers during dormant season by pruning at least 15 inches below the end and burn them.",
      c2: "2. Remove any injured or insect-invaded fruits to avoid re-infection.",
      c3: "3. Using copper-based fungicide will protect against both black rot and fire blight.",
      link: "https://extension.umn.edu/plant-diseases/black-rot-apple",
    );
  }
}
