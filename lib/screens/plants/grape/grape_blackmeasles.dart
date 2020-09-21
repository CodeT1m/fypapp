import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class GEBMdisease extends StatefulWidget {
  @override
  _GEBMdiseaseState createState() => _GEBMdiseaseState();
}

class _GEBMdiseaseState extends State<GEBMdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/grape/gebm1.JPG',
      img2: 'lib/images/grape/gebm2.JPG',
      img3: 'lib/images/grape/gebm3.JPG',
      diseaseTitle: "g_ebm",
      diseaseName: getTranslated(context, 'grape_esca'),
      sName: "Guignardia bidwellii.",
      c0: getTranslated(context, 'gebm0'),
      c1: "1. ${getTranslated(context, 'gebm1')}",
      c2: "2. ${getTranslated(context, 'gebm2')}",
      c3: "3. ${getTranslated(context, 'gebm3')}",
      link: "https://apsjournals.apsnet.org/doi/pdf/10.1094/PDIS.1999.83.5.404",
    );
  }
}
