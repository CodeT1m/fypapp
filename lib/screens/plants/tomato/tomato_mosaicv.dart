import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class TTMVdisease extends StatefulWidget {
  @override
  _TTMVdiseaseState createState() => _TTMVdiseaseState();
}

class _TTMVdiseaseState extends State<TTMVdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/ttmv1.JPG',
      img2: 'lib/images/tomato/ttmv2.JPG',
      img3: 'lib/images/tomato/ttmv3.JPG',
      diseaseTitle: "t_tmv",
      diseaseName: "Tomato Mosaic Virus",
      sName: "Tobamovirus.",
      c0: "Tomato Mosaic Virus is a plant pathogenic virus which can cause yellowing and stunting of tomato plants resulting in loss of stand and reduced yield.",
      c1: "1. Avoid using tobacco products around tomato plants, and wash hands after using tobacco products and before working with the plants.",
      c2: "2. Completely pull up and burn infected plants. Do not compost infected plant material.",
      c3: "3. Wash your hands with soap and disinfect tools after handling tomato plants to keep the disease from spreading.",
      link:
          "https://www.planetnatural.com/pest-problem-solver/plant-disease/mosaic-virus/",
    );
  }
}
