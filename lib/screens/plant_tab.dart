import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fypapp/utilities/config.dart';

class PlantTopTab extends StatelessWidget {
  final String plantName, plantIcon;
  final Color colorVal;
  PlantTopTab({this.plantName, this.plantIcon, this.colorVal});

  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return Container(
        height: hei * 0.1,
        child: SizedBox(
          height: hei * 0.05,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              //itemCount: categories.length,
              itemCount: 1,
              shrinkWrap: true,
              //controller: scrollController,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        //flex: 2,
                        child: Container(
                          height: hei * 0.07,
                          //width: 50,
                          //padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          child: Image.asset(
                            //categories[index]['icon'],
                            plantIcon,
                            height: hei * 0.07,
                            width: wid * 0.15,
                          ),
                          decoration: BoxDecoration(
                              color: colorVal,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      //Text(categories[index]['name'])
                      Text(
                        plantName,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
              }),
        )

        // child: TabBar(
        //   controller: tabController,
        //   isScrollable: true,
        //   indicatorColor: Colors.green,
        //   unselectedLabelColor: Colors.transparent,

        // ),
        );
  }
}
