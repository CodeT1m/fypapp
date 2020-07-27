import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

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
      diseaseName: "Grape Esca (Black measles)",
      sName: "Guignardia bidwellii.",
      c0: "Grapevine measles, also called esca, black measles.",
      c1: "1. Raisins affected by measles should be discarded during harvest.",
      c2: "2. Chemical control by spraying or painting the trunks and main branches with a sodium arsenite solution.",
      c3: "3. (Control no. 2) should be applied for 2 consecutive years, at least 2 weeks after pruning and not later than 3 weeks before sprouting.",
      link: "https://apsjournals.apsnet.org/doi/pdf/10.1094/PDIS.1999.83.5.404",
    );
  }
}
