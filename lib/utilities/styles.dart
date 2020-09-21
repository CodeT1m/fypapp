import 'package:flutter/material.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';
import 'package:fypapp/screens/rectangle.dart';
import 'package:fypapp/utilities/rectangle_list.dart';

class TextStyles {
  static const AppBarText =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
  static const OnboardTitleText = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.white, fontSize: 26.0);
  static const OnBoardSubText = TextStyle(
      fontWeight: FontWeight.normal, color: Colors.white, fontSize: 18.0);
  static const DiseaseTitle = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24.0);
  static const DiseaseName = TextStyle(
      fontWeight: FontWeight.normal, color: Colors.black, fontSize: 16.0);
}

class DataSearch extends SearchDelegate<String> {
  final diseaseTitle = [
    "abr (Apple Black rot)",
    "as (Apple Scab)",
    "ar (Cedar Apple Rust)",
    "cpm (Cherry Powdery Mildew)",
    "g_ebm (Grape Esa)",
    "g_br (Grape Black rot)",
    "g_Lb (Grape Leaf blight)",
    "mLb (Northern blight)",
    "mLs (Gray Leaf Spot)",
    "mcr (Maize Common Rust)",
    "pbs (Peach bacterial spot)",
    "pp_bs (Pepper bacterial spot)",
    "po_eb (Potato Early blight)",
    "po_Lb (Potato Late blight)",
    "sberry_Ls (Strawberry)",
    "squ_pm (Squash Powdery)",
    "tom_bs (Tomato Bacterial spot)",
    "tom_eb (Tomato Early blight)",
    "tom_Lb (Tomato Late blight)",
    "tom_Lm (Tomato Leaf Mold)",
    "t_sLs (Tomato Leaf Spot)",
    "t_tmv (Tomato Mosaic virus)",
    "t_smt (Tomato Spider mite)",
    "t_ts (Tomato Target spot)",
    "t_ty (Yellow Leaf Virus)"
  ];
  final disease = [
    "abr (Apple Black rot)",
    "g_br (Grape Black rot)",
    "tom_Lm (Tomato Leaf Mold)",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions to perform in search bar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // what u want in the leading icon / side of app bar (left side)
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // shows result based on selection
    //final rec = query == rectangleList.
    return ListView.builder(
        itemCount: rectangleList.length,
        itemBuilder: (context, index) {
          if (rectangleList[index]['title'] == query) {
            return Rectangle(
              diseaseName: rectangleList[index]['name'],
              diseaseTitle: rectangleList[index]['title'],
              image: rectangleList[index]['image'],
              //onPress: rectangleList[index]['onTap'],
              onPress: PlantNavigator.gotoPlant(
                  context, rectangleList[index]['onTap']),
            );
          } else {
            return Padding(padding: EdgeInsets.only(top: 0));
          }
        });
  }

  @override
  Widget buildSuggestions(BuildContext contexntext) {
    // shows while searching
    final suggestionList = query.isEmpty
        ? disease
        : diseaseTitle.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.location_city),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggestionList.length,
    );
  }
}
