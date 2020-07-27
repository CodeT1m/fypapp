import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class SQUPMdisease extends StatefulWidget {
  @override
  _SQUPMdiseaseState createState() => _SQUPMdiseaseState();
}

class _SQUPMdiseaseState extends State<SQUPMdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/squash/squpm1.JPG',
      img2: 'lib/images/squash/squpm2.JPG',
      img3: 'lib/images/squash/squpm3.JPG',
      diseaseTitle: "squ_pm",
      diseaseName: "Squash Powdery Mildew",
      sName: "Pseudocercospora vitis.",
      c0: "Squash Powdery mildew is a disease mainly caused by the fungus \'Podosphaera xanthii\' which can cause premature death of leaves and reduce yield and fruit quality.",
      c1: "1. Practicing crop rotation prevents the spread of powdery mildew.",
      c2: "2. Provide good air movement around plants through proper spacing, staking of plants and weed control.",
      c3: "3. Apply fungicides after finding the first spot of powdery mildew.",
      link:
          "https://extension.umn.edu/diseases/powdery-mildew-cucurbits#:~:text=Powdery%20mildew%2C%20mainly%20caused%20by,reduce%20yield%20and%20fruit%20quality.",
    );
  }
}
