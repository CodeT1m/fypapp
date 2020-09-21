import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';

class TSLSdisease extends StatefulWidget {
  @override
  _TSLSdiseaseState createState() => _TSLSdiseaseState();
}

class _TSLSdiseaseState extends State<TSLSdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/tomato/tsLs1.JPG',
      img2: 'lib/images/tomato/tsLs2.JPG',
      img3: 'lib/images/tomato/tsLs3.JPG',
      diseaseTitle: "t_sLs",
      diseaseName: getTranslated(context, 'tomato_leaf_spot'),
      sName: "Septoria lycopersici.",
      c0: getTranslated(context, 'tsls0'),
      c1: "1. ${getTranslated(context, 'tsls1')}",
      c2: "2. ${getTranslated(context, 'tsls2')}",
      c3: "3. ${getTranslated(context, 'tsls3')}",
      link:
          "https://www.missouribotanicalgarden.org/gardens-gardening/your-garden/help-for-the-home-gardener/advice-tips-resources/pests-and-problems/diseases/fungal-spots/septoria-leaf-spot-of-tomato.aspx#:~:text=Septoria%20leaf%20spot%20is%20caused,weather%20persists%20for%20extended%20periods.&text=Septoria%20leaf%20spot%20usually%20appears,after%20the%20first%20fruit%20sets.",
    );
  }
}
