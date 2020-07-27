import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class CPMdisease extends StatefulWidget {
  @override
  _CPMdiseaseState createState() => _CPMdiseaseState();
}

class _CPMdiseaseState extends State<CPMdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/cherry/cpm1.JPG',
      img2: 'lib/images/cherry/cpm2.JPG',
      img3: 'lib/images/cherry/cpm3.JPG',
      diseaseTitle: "cpm",
      diseaseName: "Cherry Powdery Mildew",
      sName: "Podosphaera clandestina",
      c0: "Powdery Mildew is caused by an obligate biotropic fungus called Podosphaera clandestina, Mid- and late-season sweet cherry cultivars are commonly affected.",
      c1: "1. Potassium bicarbonate is a safe, effective fungicide that kills spores on contact. Spray it unto affected plants.",
      c2: "2. Combine one table-spoon baking soda and one-half teaspoon of liquid, non-detergent soap with one gallon of water, and spray the mixture liberally on the plants.",
      c3: "3. Applying a milk treatment of 40% percent milk and 60% water produce free radicals that are toxic to the fungus when they interact with the sun.",
      link:
          "https://dengarden.com/gardening/Organic-Methods-of-Exterminating-Powdery-Mildew",
    );
  }
}
