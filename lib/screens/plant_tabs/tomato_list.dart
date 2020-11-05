import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';
import 'package:fypapp/screens/plants/tomato/tomato_bacterial.dart';
import 'package:fypapp/screens/plants/tomato/tomato_earlyb.dart';
import 'package:fypapp/screens/plants/tomato/tomato_lateb.dart';
import 'package:fypapp/screens/plants/tomato/tomato_latem.dart';
import 'package:fypapp/screens/plants/tomato/tomato_leafspot.dart';
import 'package:fypapp/screens/plants/tomato/tomato_mosaicv.dart';
import 'package:fypapp/screens/plants/tomato/tomato_spiderm.dart';
import 'package:fypapp/screens/plants/tomato/tomato_tspot.dart';
import 'package:fypapp/screens/plants/tomato/tomato_yellow.dart';
import 'package:fypapp/screens/rectangle.dart';

class TomatoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Rectangle(
              diseaseTitle: "tom_bs",
              diseaseName: getTranslated(context, 'tomato_bacterial_spot'),
              image: "lib/images/tomato/tombs1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TOMBSdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "tom_eb",
              diseaseName: getTranslated(context, 'tomato_early_blight'),
              image: "lib/images/tomato/tomeb1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TOMEBdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "tom_Lb",
              diseaseName: getTranslated(context, 'tomato_late_blight'),
              image: "lib/images/tomato/tomLb1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TOMLBdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "tom_Lm",
              diseaseName: getTranslated(context, 'tomato_leaf_mold'),
              image: "lib/images/tomato/tomLm1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TOMLMdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "t_sLs",
              diseaseName: getTranslated(context, 'tomato_leaf_spot'),
              image: "lib/images/tomato/tsLs1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TSLSdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "t_tmv",
              diseaseName: getTranslated(context, 'tomato_mosaic_virus'),
              image: "lib/images/tomato/ttmv1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TTMVdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "t_smt",
              diseaseName: getTranslated(context, 'tomato_spider_mite'),
              image: "lib/images/tomato/tsmt1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TSMTdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "t_ts",
              diseaseName: getTranslated(context, 'tomato_target_spot'),
              image: "lib/images/tomato/tts1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TTSdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "t_ty",
              diseaseName: getTranslated(context, 'tomato_yellow'),
              image: "lib/images/tomato/tty1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TTYdisease()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
