import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';
import 'package:fypapp/screens/plants/sberry/sberry_scorch.dart';
import 'package:fypapp/screens/rectangle.dart';

class SberryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Rectangle(
              diseaseTitle: "sberry_Ls",
              diseaseName: getTranslated(context, 'strawberry_leaf'),
              image: "lib/images/sberry/sberryLs1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SBERRYLSdisease()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
