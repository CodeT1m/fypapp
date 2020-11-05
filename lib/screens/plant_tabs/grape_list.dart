import 'package:flutter/material.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';
import 'package:fypapp/screens/plants/grape/grape_blackmeasles.dart';
import 'package:fypapp/screens/plants/grape/grape_blackrot.dart';
import 'package:fypapp/screens/plants/grape/grape_leafblight.dart';
import 'package:fypapp/screens/rectangle.dart';

class GrapeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Rectangle(
              diseaseTitle: "g_ebm",
              diseaseName: getTranslated(context, 'grape_esca'),
              image: "lib/images/grape/gebm1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GEBMdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "g_br",
              diseaseName: getTranslated(context, 'grape_black_rot'),
              image: "lib/images/grape/gbr1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GBRdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "g_Lb",
              diseaseName: getTranslated(context, 'grape_leaf_blight'),
              image: "lib/images/grape/gLb1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GLBdisease()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
