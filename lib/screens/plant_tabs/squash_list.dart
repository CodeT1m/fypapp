import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fypapp/screens/plants/squash/squash_mildew.dart';
import 'package:fypapp/screens/rectangle.dart';

class SquashList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Rectangle(
              diseaseTitle: "squ_pm",
              diseaseName: "Squash Powdery Mildew",
              image: "lib/images/squash/squpm1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SQUPMdisease()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
