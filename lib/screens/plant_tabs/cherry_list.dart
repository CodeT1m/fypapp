import 'package:flutter/material.dart';
import 'package:fypapp/screens/plants/cherry/cherry_mildew.dart';
import 'package:fypapp/screens/rectangle.dart';

class CherryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Rectangle(
              diseaseTitle: "cpm",
              diseaseName: "Cherry Powdery Mildew",
              image: "lib/images/cherry/cpm1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CPMdisease()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
