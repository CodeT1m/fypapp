import 'package:flutter/material.dart';
import 'package:fypapp/utilities/config.dart';
import 'package:fypapp/utilities/styles.dart';

class Rectangle extends StatelessWidget {
  final String image, diseaseTitle, diseaseName;
  final Function onPress;
  Rectangle({this.image, this.diseaseTitle, this.diseaseName, this.onPress});
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    return Container(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          height: hei * 0.3,
          margin: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                  //flex: 1,
                  child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        //color: Colors.green,
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: shadowList),
                    margin: EdgeInsets.only(top: 50, bottom: 50),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      image,
                      height: hei * 0.15,
                      //width: 250,
                    ),
                  )
                ],
              )),
              Expanded(
                  flex: 2,
                  child: Container(
                    //margin: EdgeInsets.only(top: 40, bottom: 40),
                    height: hei * 0.15,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          diseaseTitle,
                          style: TextStyles.DiseaseTitle,
                        ),
                        SizedBox(
                          height: hei * 0.01,
                        ),
                        Text(
                          diseaseName,
                          style: TextStyles.DiseaseName,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
