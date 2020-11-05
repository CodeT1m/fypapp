import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';
import 'package:fypapp/screens/plant_tabs/apple.dart';
import 'package:fypapp/utilities/styles.dart';

class PlantHomeScreen extends StatefulWidget {
  @override
  _PlantHomeScreenState createState() => _PlantHomeScreenState();
}

class _PlantHomeScreenState extends State<PlantHomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  @override
  Widget build(BuildContext context) {
    // var hei = MediaQuery.of(context).size.height;
    // var wid = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   "AgrikAI More food less stress",
        //   style: TextStyles.AppBarText,
        // ),
        // centerTitle: true,
        backgroundColor: Colors.green,
        //leading: Icon(Icons.menu),
        title: Text(
          getTranslated(context, 'search'),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ],
      ),
      //drawer: Drawer(),
      body: // TabBarView(children: <Widget>[
          //controller: tabController,
          Apple(
        color: Colors.green,
      ),
      //  ])
    );
  }
}

// Container(
//     padding:
//         EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//     margin:
//         EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white),
//     child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Icon(
//             Icons.search,
//             color: Colors.green[200],
//           ),
//           Text("Search plant"),
//           Icon(Icons.settings)
//         ])),
