import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fypapp/utilities/config.dart';

class PlantHomeScreen extends StatefulWidget{
  @override
  _PlantHomeScreenState createState()=> _PlantHomeScreenState();
}

class _PlantHomeScreenState extends State<PlantHomeScreen>{
  double xOffset = 0; double yOffset = 0;
  double scaleFactor = 1;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text("AgrikAI More food less stress"),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: SingleChildScrollView(
        child: GestureDetector(  // for the search keyboard
        onTap: (){},
        child: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Container(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                  Icon(Icons.search),
                  Text("Search plant"),
                  Icon(Icons.settings)
                ]
              )
            ),

            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index){
                  return Container(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          //height: 50, width: 50,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          child: Image.asset(categories[index]['icon'], height: 50, width: 50,
                            color: Colors.grey[700],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white, boxShadow: shadowList,
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        Text(categories[index]['name'])
                      ],
                    ),
                  );
                }
              ),
            ),

            GestureDetector(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage()));
              },
              child: Container(
                height: 240, margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(color: Colors.blueGrey[300],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(
                              tag: 1, child: Image.asset('lib/images/pepper3.png')
                            ),
                          )
                        ],
                      )
                    ),
                    Expanded(child: Container(
                        margin: EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                        )
                        ),
                      )
                    )
                  ],
                ),
              ),
            ),

            Container(
              height: 240, margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Expanded(child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: shadowList
                        ),
                        margin: EdgeInsets.only(top: 50),
                      ),
                      Align(
                        child: Image.asset("lib/images/potato.png"),
                      )
                    ],
                  )
                  ),
                  Expanded(child: Container(
                      margin: EdgeInsets.only(top: 60, bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,
                      boxShadow: shadowList,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                      )
                      ),
                    )
                  )
                ],
              ),
            ),
            SizedBox(height: 50,)
          ],
        )
      ),
      )
    );
  }
}