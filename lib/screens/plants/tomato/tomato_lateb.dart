import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class TOMLBdisease extends StatefulWidget {
  @override
  _TOMLBdiseaseState createState() => _TOMLBdiseaseState();
}

class _TOMLBdiseaseState extends State<TOMLBdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tomLb1.JPG',
      img2: 'lib/images/tomato/tomLb2.JPG',
      img3: 'lib/images/tomato/tomLb3.JPG',
      diseaseTitle: "tom_Lb",
      diseaseName: "Tomato Late blight",
      sName: "Phytophthora infestans.",
      c0: "Tomato late blight is a disease cuased by the oomycete pathogen \'Phytophthora infestans\' and can result in total crop failiure if untreated.",
      c1: "1. Tomato seed that that has been thoroughly dried is unlikely going to have a seed infection.",
      c2: "2. Control volunteer potato plants, as infected plants can grow from infected tubers.",
      c3: "3. Fungicide applications should be made prior to infection when environmental conditions favor disease to be the most effective.",
      link:
          "https://extension.umn.edu/diseases/late-blight#:~:text=Late%20blight%20is%20a%20potentially,famine%20of%20the%20late%201840s.",
    );
  }
}
