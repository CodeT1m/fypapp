import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class POEBdisease extends StatefulWidget {
  @override
  _POEBdiseaseState createState() => _POEBdiseaseState();
}

class _POEBdiseaseState extends State<POEBdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/potato/poeb1.JPG',
      img2: 'lib/images/potato/poeb2.JPG',
      img3: 'lib/images/potato/poeb3.JPG',
      diseaseTitle: "po_eb",
      diseaseName: "Potato Early blight",
      sName: "Alternaria solani.",
      c0: "Potato Early blight is a disease caused by the fungal pathogen \'Alternaria solani\', and can result in considerable defoliation and enhance the chance for tuber infection if left uncontrolled.",
      c1: "1. Prune or stake plants to improve air circulation and reduce fungal problems.",
      c2: "2. Keep the soil under plants clean and free of garden debris.",
      c3: "3. Avoid overhead irrigation and allow for sufficient aeration between plants to allow the foliage to dry as quickly as possible.",
      link:
          "https://www.planetnatural.com/pest-problem-solver/plant-disease/early-blight/",
    );
  }
}
