import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class POLBdisease extends StatefulWidget {
  @override
  _POLBdiseaseState createState() => _POLBdiseaseState();
}

class _POLBdiseaseState extends State<POLBdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/potato/poLb1.JPG',
      img2: 'lib/images/potato/poLb2.JPG',
      img3: 'lib/images/potato/poLb3.JPG',
      diseaseTitle: "po_Lb",
      diseaseName: "Potato Late blight",
      sName: "Phytophthora infestans.",
      c0: "Potato Late blight is a disease caused by a microorganism called \'Phytophthora infestans\'.",
      c1: "1. Do not mix seed lots because cutting can transmit late blight.",
      c2: "2. Avoid planting problem areas that may remain wet for extended periods or may be difficult to spray.",
      c3: "3. Applying phosphorous acid to potatoes after harvest and before piling can prevent infection and the spread of late blight in storage.",
      link: "https://www.ag.ndsu.edu/publications/crops/late-blight-in-potato",
    );
  }
}
