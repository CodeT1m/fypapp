import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class SBERRYLSdisease extends StatefulWidget {
  @override
  _SBERRYLSdiseaseState createState() => _SBERRYLSdiseaseState();
}

class _SBERRYLSdiseaseState extends State<SBERRYLSdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/sberry/sberryLs1.JPG',
      img2: 'lib/images/sberry/sberryLs2.JPG',
      img3: 'lib/images/sberry/sberryLs3.JPG',
      diseaseTitle: "sberry_Ls",
      diseaseName: "Strawberry Leaf scorch",
      sName: "Diplocarpon earliana.",
      c0: "Strawberry Leaf scorch is a disease caused by a fungal infection called \'Diplocarpon earliana\' which affects the foliage of strawberry plantings.",
      c1: "1. Frequently plant new strawberry transplants.",
      c2: "2. Cleaning up garden frequently and avoiding waterlogged soil reduces the likelihood of the spread of the fungus.",
      c3: "3. During planting, ensure proper plant spacing to provide adequate air circulation, and the use of drip irrigation.",
      link:
          "https://www.gardeningknowhow.com/edible/fruits/strawberry/strawberries-with-leaf-scorch.htm#:~:text=Scorched%20strawberry%20leaves%20are%20caused,on%20the%20topside%20of%20leaves.",
    );
  }
}
