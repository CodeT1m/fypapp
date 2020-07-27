import 'package:flutter/material.dart';
import 'package:fypapp/screens/disease.dart';

class MCRdisease extends StatefulWidget {
  @override
  _MCRdiseaseState createState() => _MCRdiseaseState();
}

class _MCRdiseaseState extends State<MCRdisease> {
  @override
  Widget build(BuildContext context) {
    return Disease(
      img1: 'lib/images/maize/mcr1.JPG',
      img2: 'lib/images/maize/mcr2.JPG',
      img3: 'lib/images/maize/mcr3.JPG',
      diseaseTitle: "mcr",
      diseaseName: "Maize Common Rust",
      sName: "Puccinia sorghi.",
      c0: "Common rust on corn is caused by the fungus \'Puccinia sorghi\' and it can cause serious losses in yield and quality of sweet corn.",
      c1: "1. Use of resistant varieties is the best way of managing rust diseases: partial resistant and qualitative resistance.",
      c2: "2. By foliar applications of fungicides on sweet corn.",
      c3: "3. Collect the remains of the crop and destroy by burning or burying, and weed around maize plots if Oxalis is common.",
      link: "https://www.pestnet.org/fact_sheets/maize_common_rust_225.pdf",
    );
  }
}
