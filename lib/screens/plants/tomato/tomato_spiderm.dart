import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class TSMTdisease extends StatefulWidget {
  @override
  _TSMTdiseaseState createState() => _TSMTdiseaseState();
}

class _TSMTdiseaseState extends State<TSMTdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tsmt1.JPG',
      img2: 'lib/images/tomato/tsmt2.JPG',
      img3: 'lib/images/tomato/tsmt3.JPG',
      diseaseTitle: "t_smt",
      diseaseName: "Tomato Spider Mite",
      sName: "Pseudocercospora vitis.",
      c0: "Tomato Spider Mite is a disease which can colonize the undersides of leaves and suck plant juices.",
      c1: "1. Irrigate your tomato plants to keep them moist but not wet. Water-stressed tomato plants are more susceptible to spider mite infestations.",
      c2: "2. Avoid the use of chemical insecticides and high-nitrogen fertilizers, which kill spider mite predators and can stimulate spider mite reproduction.",
      c3: "3. Remove leaf litter and other debris from the planting area.",
      link:
          "https://homeguides.sfgate.com/avoid-spider-mites-tomato-garden-73368.html#:~:text=Spider%20mites%20(Tetranychus%20spp.),pest%20problems%20of%20tomato%20plants.",
    );
  }
}
