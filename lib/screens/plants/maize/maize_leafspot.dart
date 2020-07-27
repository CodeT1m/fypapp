import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class MLSdisease extends StatefulWidget {
  @override
  _MLSdiseaseState createState() => _MLSdiseaseState();
}

class _MLSdiseaseState extends State<MLSdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/maize/mLs1.JPG',
      img2: 'lib/images/maize/mLs2.JPG',
      img3: 'lib/images/maize/mLs3.JPG',
      diseaseTitle: "mLs",
      diseaseName: "Maize Gray Leaf Spot",
      sName: "Cercospora zeae-maydis.",
      c0: "Gray Leaf spot is a fungal disease that affects corn caused by the pathogen \'Cercospora zeae-maydis\'.",
      c1: "1. During the growing season, foliar fungicides can be used to manage gray leaf spot outbreaks.",
      c2: "2. Planting hybrids with a high level of genetic resistance can help reduce the risk of yield loss due to gray leaf spot infection.",
      c3: "3. Susceptible cultivars should not be planted within 100 yards of the previous year's infected crop.",
      link:
          "https://cropwatch.unl.edu/plantdisease/sugarbeet/cercospora-leaf-spot",
    );
  }
}
