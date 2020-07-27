import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fypapp/screens/plants/potato/potato_earlyb.dart';
import 'package:fypapp/screens/plants/potato/potato_lateb.dart';
import 'package:fypapp/screens/rectangle.dart';

class PotatoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Rectangle(
              diseaseTitle: "po_eb",
              diseaseName: "Potato Early blight",
              image: "lib/images/potato/poeb1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => POEBdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "po_Lb",
              diseaseName: "Potato Late blight",
              image: "lib/images/potato/poLb1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => POLBdisease()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
