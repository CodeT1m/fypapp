import 'package:flutter/material.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';
import 'package:fypapp/screens/plant_tab.dart';
import 'package:fypapp/screens/plant_tabs/apple_list.dart';
import 'package:fypapp/screens/plant_tabs/cherry_list.dart';
import 'package:fypapp/screens/plant_tabs/grape_list.dart';
import 'package:fypapp/screens/plant_tabs/maize_list.dart';
import 'package:fypapp/screens/plant_tabs/peach_list.dart';
import 'package:fypapp/screens/plant_tabs/pepper_list.dart';
import 'package:fypapp/screens/plant_tabs/potato_list.dart';
import 'package:fypapp/screens/plant_tabs/sberry_list.dart';
import 'package:fypapp/screens/plant_tabs/squash_list.dart';
import 'package:fypapp/screens/plant_tabs/tomato_list.dart';

class Apple extends StatefulWidget {
  Color color;
  Apple({this.color});
  @override
  _AppleState createState() => _AppleState();
}

class _AppleState extends State<Apple> with SingleTickerProviderStateMixin {
  TabController tabController;
  // int length;
  // int index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //print("TabController length: ${tabController.length}");
    tabController = new TabController(
      length: 10,
      vsync: this,
    );
    tabController.addListener(handleTabSelection);
  }

  void handleTabSelection() {
    setState(() {
      widget.color = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10.0),
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              //indicatorWeight: .0,
              unselectedLabelColor: Colors.white,
              tabs: <Widget>[
                // Row(
                //   children: <Widget>[
                //     Wrap(
                //       direction: Axis.horizontal,
                //       runSpacing: 4.0,
                //       spacing: 2.0,
                //       children: <Widget>[
                Tab(
                  child: PlantTopTab(
                    plantIcon: "lib/images/apple.png",
                    //plantName: "Apple",
                    plantName: getTranslated(context, 'apple'),
                    colorVal:
                        tabController.index == 0 ? Colors.green : Colors.grey,
                  ),
                ),
                Tab(
                  child: PlantTopTab(
                    plantIcon: "lib/images/cherry.png",
                    plantName: getTranslated(context, 'cherry'),
                    colorVal:
                        tabController.index == 1 ? Colors.green : Colors.grey,
                  ),
                ),
                Tab(
                  child: PlantTopTab(
                    plantIcon: "lib/images/grape.png",
                    plantName: getTranslated(context, 'grape'),
                    colorVal:
                        tabController.index == 2 ? Colors.green : Colors.grey,
                  ),
                ),
                Tab(
                  child: PlantTopTab(
                    plantIcon: "lib/images/maize.png",
                    plantName: getTranslated(context, 'maize'),
                    colorVal:
                        tabController.index == 3 ? Colors.green : Colors.grey,
                  ),
                ),
                Tab(
                  child: PlantTopTab(
                    plantIcon: "lib/images/peach.png",
                    plantName: getTranslated(context, 'peach'),
                    colorVal:
                        tabController.index == 4 ? Colors.green : Colors.grey,
                  ),
                ),
                Tab(
                  child: PlantTopTab(
                    plantIcon: "lib/images/pepper.png",
                    plantName: getTranslated(context, 'pepper'),
                    colorVal:
                        tabController.index == 5 ? Colors.green : Colors.grey,
                  ),
                ),
                Tab(
                  child: PlantTopTab(
                    plantIcon: "lib/images/potato.png",
                    plantName: getTranslated(context, 'potato'),
                    colorVal:
                        tabController.index == 6 ? Colors.green : Colors.grey,
                  ),
                ),
                // Tab(
                //   child: PlantTopTab(
                //     plantIcon: "lib/images/raspberry.png",
                //     plantName: "Raspberry",
                //     colorVal:
                //         tabController.index == 7 ? Colors.green : Colors.grey,
                //   ),
                // ),
                Tab(
                  child: PlantTopTab(
                    plantIcon: "lib/images/strawberry.png",
                    plantName: getTranslated(context, 'strawberry'),
                    colorVal:
                        tabController.index == 7 ? Colors.green : Colors.grey,
                  ),
                ),
                Tab(
                  child: PlantTopTab(
                    plantIcon: "lib/images/squash.png",
                    plantName: getTranslated(context, 'squash'),
                    colorVal:
                        tabController.index == 8 ? Colors.green : Colors.grey,
                  ),
                ),
                Tab(
                  child: PlantTopTab(
                    plantIcon: "lib/images/tomato.png",
                    plantName: getTranslated(context, 'tomato'),
                    colorVal:
                        tabController.index == 9 ? Colors.green : Colors.grey,
                  ),
                ),
              ],
            ),
            //     ],
            //   )
            // ]),
          ),
        ),
        body: TabBarView(controller: tabController, children: <Widget>[
          AppleList(),
          CherryList(),
          GrapeList(),
          MaizeList(),
          PeachList(),
          PepperList(),
          PotatoList(),
          SberryList(),
          SquashList(),
          TomatoList()
        ]),
      ),
    );
  }
}
