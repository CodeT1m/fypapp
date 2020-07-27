import 'package:flutter/material.dart';
import 'package:fypapp/screens/plants/maize/maize_leafblight.dart';
import 'package:fypapp/screens/plants/maize/maize_leafspot.dart';
import 'package:fypapp/screens/plants/maize/maize_rust.dart';
import 'package:fypapp/screens/rectangle.dart';

class MaizeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Rectangle(
              diseaseTitle: "mLb",
              diseaseName: "Maize Northern leaf blight",
              image: "lib/images/maize/mLb1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MLBdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "mLs",
              diseaseName: "Maize Gray Leaf Spot",
              image: "lib/images/maize/mLs1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MLSdisease()));
              },
            ),
            Rectangle(
              diseaseTitle: "mcr",
              diseaseName: "Maize Common Rust",
              image: "lib/images/maize/mcr1.JPG",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MCRdisease()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
