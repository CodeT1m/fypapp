import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';
import 'package:fypapp/screens/plants/pepper/pepper_bacterial.dart';
import 'package:fypapp/screens/rectangle.dart';

class PepperList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Rectangle(
              diseaseTitle: "pp_bs",
              diseaseName: getTranslated(context, 'pepper_spot'),
              image: "lib/images/pepper/ppbs1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PPBSdisease()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
