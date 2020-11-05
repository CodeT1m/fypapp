import 'package:flutter/material.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';
import 'package:fypapp/screens/plants/peach/peach_bacterial.dart';
import 'package:fypapp/screens/rectangle.dart';

class PeachList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Rectangle(
              diseaseTitle: "pbs",
              diseaseName: getTranslated(context, 'peach_spot'),
              image: "lib/images/peach/pbs1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PBSdisease()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
