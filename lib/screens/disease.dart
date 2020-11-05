import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';
import 'package:fypapp/utilities/appBarLayout.dart';
import 'package:fypapp/utilities/config.dart';
import 'package:fypapp/utilities/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class Disease extends StatefulWidget {
  final String img1,
      img2,
      img3,
      diseaseTitle,
      diseaseName,
      sName,
      c0,
      c1,
      c2,
      c3,
      link;
  Disease(
      {this.img1,
      this.img2,
      this.img3,
      this.diseaseTitle,
      this.diseaseName,
      this.sName,
      this.c0,
      this.c1,
      this.c2,
      this.c3,
      this.link});

  @override
  _DiseaseState createState() => _DiseaseState();
}

class _DiseaseState extends State<Disease> {
  Future<void> launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;

    // TODO: implement build
    Widget imageCarousel = Container(
        //height: MediaQuery.of(context).size.height * 0.05,
        height: hei * 0.38,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            // Image.asset(img1),
            // Image.asset(img2),
            // Image.asset(img3),
            AssetImage(widget.img1),
            AssetImage(widget.img2),
            AssetImage(widget.img3),
          ],
          autoplay: false, animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0, indicatorBgPadding: 2.0,
          dotColor: Colors.greenAccent,
          //radius: Radius.circular(20),
        ));

    return Scaffold(
      appBar: AppBarLayout(
        title: "AGRIKai",
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
              child: Column(
            children: <Widget>[
              Expanded(
                child: Container(color: Colors.white),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          )),
          SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: Column(
              children: <Widget>[
                imageCarousel,
                SizedBox(height: hei * 0.007),
                Align(
                  // align automatically took this to center
                  alignment: Alignment.center,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[350],
                          boxShadow: shadowList),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          height: hei * 0.19,
                          width: wid * 0.8, //responsible for the center
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.diseaseTitle,
                                style: TextStyles.DiseaseTitle,
                              ),
                              SizedBox(
                                height: hei * 0.005,
                              ),
                              Text(
                                widget.diseaseName,
                                // getTranslated(context, widget.diseaseName) ??
                                //     'default',
                                style: TextStyles.DiseaseName,
                              ),
                              SizedBox(
                                height: hei * 0.005,
                              ),
                              Text(
                                "${getTranslated(context, 'casual_agents')}: ${widget.sName}",
                                style: TextStyles.DiseaseName,
                              ),
                            ],
                          ))),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    //height: hei * 0.4, width: wid * 0.8,
                    //height: hei * 0.8,
                    //  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("${getTranslated(context, 'causes')}",
                            style: TextStyles.DiseaseTitle),
                        SizedBox(
                          height: hei * 0.007,
                        ),
                        Text(widget.c0, style: TextStyles.DiseaseName),
                        SizedBox(
                          height: hei * 0.02,
                        ),
                        Text("${getTranslated(context, 'control')}",
                            style: TextStyles.DiseaseTitle),
                        SizedBox(
                          height: hei * 0.007,
                        ),
                        // Wrap(
                        //   direction: Axis.vertical,
                        //   children: <Widget>[
                        Text(widget.c1, style: TextStyles.DiseaseName),
                        SizedBox(
                          height: hei * 0.005,
                        ),
                        Text(widget.c2, style: TextStyles.DiseaseName),
                        SizedBox(
                          height: hei * 0.005,
                        ),
                        Text(widget.c3, style: TextStyles.DiseaseName),

                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: hei * 0.05,
                ),
                Container(
                  //alignment: Alignment.bottomCenter,
                  //padding: EdgeInsets.all(100.0),

                  child: Container(
                    height: hei * 0.12,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: hei * 0.090,
                          width: wid * 0.150,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)),
                          child:
                              Icon(Icons.favorite_border, color: Colors.white),
                        ),
                        SizedBox(width: wid * 0.035),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              launchURL(widget.link);
                            },
                            child: Container(
                              height: hei * 0.090,
                              child: Center(
                                  child: Text(
                                "${getTranslated(context, 'for_more_info')}\n\t\t${getTranslated(context, 'click_here')}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
