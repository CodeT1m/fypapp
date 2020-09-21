import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

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
      diseaseName: getTranslated(context, 'tomato_target_spot'),
      sName: "Corynespora cassiicola.",
      c0: getTranslated(context, 'tts0'),
      c1: "1. ${getTranslated(context, 'tts1')}",
      c2: "2. ${getTranslated(context, 'tts2')}",
      c3: "3. ${getTranslated(context, 'tts3')}",
      link: "https://www.pestnet.org/fact_sheets/tomato_target_spot_163.htm",
    );
  }
}
