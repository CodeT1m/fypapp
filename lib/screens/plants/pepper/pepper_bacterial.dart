import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class PPBSdisease extends StatefulWidget {
  @override
  _PPBSdiseaseState createState() => _PPBSdiseaseState();
}

class _PPBSdiseaseState extends State<PPBSdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/pepper/ppbs1.JPG',
      img2: 'lib/images/pepper/ppbs2.JPG',
      img3: 'lib/images/pepper/ppbs3.JPG',
      diseaseTitle: "pp_bs",
      diseaseName: "Pepper bacterial spot",
      sName: "Xanthomonas campestris pv. vesicatoria.",
      c0: "Pepper bacterial leaf spot is a disease caused by the bacterium \'Xanthomonas campestris pv. vesicatoria\', and it spreads by splashing rain and working with wet, infected plants.",
      c1: "1. Crop rotation can help prevent bacterial leaf spot.",
      c2: "2. Avoid overhead watering.",
      c3: "3. Remove and discard badly infected plant parts and all debris at the end of the season.",
      link:
          "https://extension.umd.edu/hgic/topics/bacterial-leaf-spot-pepper-vegetables#:~:text=Common%20Pepper%20Disease,a%20symptom%20of%20bacterial%20spot.&text=Bacterial%20leaf%20spot%20is%20spread,working%20with%20wet%2C%20infected%20plants.",
    );
  }
}
