import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class TTYdisease extends StatefulWidget {
  @override
  _TTYdiseaseState createState() => _TTYdiseaseState();
}

class _TTYdiseaseState extends State<TTYdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tty1.JPG',
      img2: 'lib/images/tomato/tty2.JPG',
      img3: 'lib/images/tomato/tty3.JPG',
      diseaseTitle: "t_ty",
      diseaseName: "Tomato Yellow Leaf Curl Virus",
      sName: "Begomovirus.",
      c0: "Tomato Yellow Leaf Curl Virus (TYLCV) is a DNA virus from the genus \'Begomovirus\', abd it's the most destructive disease of tomato.",
      c1: "1. Before planting, select TYLCV-resistant varieties. Use virus- and whitefly-free transplants.",
      c2: "2. Practice good weed management in and around fields to the extent feasible.",
      c3: "3. After the growing season, remove and destroy old crop residue and volunteers on a regional basis.",
      link:
          "https://www2.ipm.ucanr.edu/agriculture/tomato/Tomato-Yellow-Leaf-Curl/",
    );
  }
}
