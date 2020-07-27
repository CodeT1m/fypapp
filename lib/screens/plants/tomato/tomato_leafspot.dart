import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class TSLSdisease extends StatefulWidget {
  @override
  _TSLSdiseaseState createState() => _TSLSdiseaseState();
}

class _TSLSdiseaseState extends State<TSLSdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tsLs1.JPG',
      img2: 'lib/images/tomato/tsLs2.JPG',
      img3: 'lib/images/tomato/tsLs3.JPG',
      diseaseTitle: "t_sLs",
      diseaseName: "Tomato Septoria Leaf Spot",
      sName: "Septoria lycopersici.",
      c0: "Tomato Septoria Leaf Spot is a disease caused by \'Septoria lycopersici\' and its in severe in wet areas where humid weather persists for extended periods.",
      c1: "1. Do not use overhead watering because it facilitates infection and spreads the disease.",
      c2: "2. Improve air circulation around the plants to promote faster drying of the foliage.",
      c3: "3. Remove, burn and destroy diseased leaves.",
      link:
          "https://www.missouribotanicalgarden.org/gardens-gardening/your-garden/help-for-the-home-gardener/advice-tips-resources/pests-and-problems/diseases/fungal-spots/septoria-leaf-spot-of-tomato.aspx#:~:text=Septoria%20leaf%20spot%20is%20caused,weather%20persists%20for%20extended%20periods.&text=Septoria%20leaf%20spot%20usually%20appears,after%20the%20first%20fruit%20sets.",
    );
  }
}
