import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class TTSdisease extends StatefulWidget {
  @override
  _TTSdiseaseState createState() => _TTSdiseaseState();
}

class _TTSdiseaseState extends State<TTSdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tts1.JPG',
      img2: 'lib/images/tomato/tts2.JPG',
      img3: 'lib/images/tomato/tts3.JPG',
      diseaseTitle: "t_ts",
      diseaseName: "Tomato Target spot",
      sName: "Corynespora cassiicola.",
      c0: "Tomato Target spot is a disease that causes plants to lose their leaves before the fruit has developed.",
      c1: "1. Practice crop rotation and don’t plant new crops in areas where other disease-prone plants have been located in the past year.",
      c2: "2. Do not use overhead irrigation; otherwise, it will create conditions for spore production and infection.",
      c3: "3. Collect and burn as much of the crop as possible when the harvest is complete.",
      link: "https://www.pestnet.org/fact_sheets/tomato_target_spot_163.htm",
    );
  }
}
