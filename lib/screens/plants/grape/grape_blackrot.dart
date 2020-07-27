import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

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
      diseaseName: "Grape Black rot",
      sName: "Guignardia bidwellii.",
      c0: "Black rot is a fungal disease caused by \'Guignardia bidwellii\' that attacks grapes during hot and humid weather.",
      c1: "1. Choose a planting site where the vines will be exposed to full sun and good air circulation.",
      c2: "2. Keep the fruit planting and surrounding areas free from weeds and tall grass to promote low humidity and limit fungal infection.",
      c3: "3. Prune, burn or destroy the vines in early winter during dormancy.",
      link:
          "http://www.missouribotanicalgarden.org/gardens-gardening/your-garden/help-for-the-home-gardener/advice-tips-resources/pests-and-problems/diseases/fruit-spots/black-rot-of-grapes.aspx#:~:text=Black%20rot%2C%20caused%20by%20the,effect%20is%20to%20the%20fruit.",
    );
  }
}
