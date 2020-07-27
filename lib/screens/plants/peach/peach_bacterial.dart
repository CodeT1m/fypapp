import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class PBSdisease extends StatefulWidget {
  @override
  _PBSdiseaseState createState() => _PBSdiseaseState();
}

class _PBSdiseaseState extends State<PBSdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/peach/pbs1.JPG',
      img2: 'lib/images/peach/pbs2.JPG',
      img3: 'lib/images/peach/pbs3.JPG',
      diseaseTitle: "pbs",
      diseaseName: "Peach bacterial spot",
      sName: "Xanthomonas camperis pv. pruni.",
      c0: "Peach bacterial spot is a common disease on older peach trees and nectarines caused by the bacterium \'Xanthomonas camperis pv. pruni\'.",
      c1: "1. Keep your peach trees healthy by properly pruning out any diseased or dead limbs and fertilize and water as necessary.",
      c2: "2. Too much nitrogen can aggravate the disease.",
      c3: "3. Plant resistant cultivars.",
      link:
          "https://www.gardeningknowhow.com/edible/fruits/peach/bacterial-spot-on-peach-trees.htm",
    );
  }
}
