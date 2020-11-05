import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class GBRdisease extends StatefulWidget {
  @override
  _GBRdiseaseState createState() => _GBRdiseaseState();
}

class _GBRdiseaseState extends State<GBRdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/grape/gbr1.JPG',
      img2: 'lib/images/grape/gbr2.JPG',
      img3: 'lib/images/grape/gbr3.JPG',
      diseaseTitle: "g_br",
      diseaseName: getTranslated(context, 'grape_black_rot'),
      sName: "Guignardia bidwellii.",
      c0: getTranslated(context, 'gbr0'),
      c1: "1. ${getTranslated(context, 'gbr0')}",
      c2: "2. ${getTranslated(context, 'gbr1')}",
      c3: "3. ${getTranslated(context, 'gbr2')}",
      link:
          "http://www.missouribotanicalgarden.org/gardens-gardening/your-garden/help-for-the-home-gardener/advice-tips-resources/pests-and-problems/diseases/fruit-spots/black-rot-of-grapes.aspx#:~:text=Black%20rot%2C%20caused%20by%20the,effect%20is%20to%20the%20fruit.",
    );
  }
}
