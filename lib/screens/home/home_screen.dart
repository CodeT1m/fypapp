import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:fypapp/screens/plant_list.dart';
import 'package:fypapp/utilities/disease_list.dart';
import 'package:fypapp/utilities/styles.dart';
import 'package:image_picker/image_picker.dart';
import 'package:overlay_container/overlay_container.dart';
import 'package:tflite/tflite.dart';
import 'package:camera/camera.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = false;
  List _output;
  File _image;
  //FileImage img;
  double imageWidth = 100.0;
  double imageHeight = 100.0;
  bool _dropdownShown = false;

  void _toggleDropdown() {
    setState(() {
      _dropdownShown = !_dropdownShown;
    });
  }

  Future openCamera(BuildContext context) async {
    // open device camera
    //var image = await picker.getImage(source: ImageSource.camera);
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      loading = true;
      //_image = File(image.path);
      _image = image;
    });
    detectImage(image);
    Navigator.of(context).pop();
  }

  openGallery(BuildContext context) async {
    // open device gallery
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return;
    setState(() {
      loading = true;
      //_image = File(image.path);
      _image = image;
    });
    detectImage(image);
    Navigator.of(context).pop();
  }

  pickVideo(BuildContext context) async {
    //var video = await picker.getVideo(source: ImageSource.gallery);
    var video = await ImagePicker.pickVideo(source: ImageSource.gallery);
    setState(() {
      loading = true;
      //_image = File(video.path);
      _image = video;
    });
    detectImage(video);
  }

  loadModel() async {
    Tflite.close();
    try {
      await Tflite.loadModel(
        model: "assets/model/detect.tflite",
        labels: "assets/model/labels.txt",
      );
    } on PlatformException {
      print("Failed to load the model");
    }
  }

  detectImage(File image) async {
    if (image == null) return;
    await ssdMobileNet(image);
    FileImage(image)
        .resolve(ImageConfiguration())
        .addListener((ImageStreamListener((ImageInfo info, bool _) {
          setState(() {
            imageWidth = info.image.width.toDouble();
            imageHeight = info.image.height.toDouble();
          });
        })));

    setState(() {
      _image = image;
      loading = false;
    });
  }

  detectVideo(File video) async {
    CameraImage img;

    var recognitions = await Tflite.detectObjectOnFrame(
        bytesList: img.planes.map((plane) {
          return plane.bytes;
        }).toList(), // required
        model: "SSDMobileNet",
        // imageHeight: img.height,
        // imageWidth: img.width,
        imageMean: 127.5, // defaults to 127.5
        imageStd: 127.5, // defaults to 127.5
        rotation: 90, // defaults to 90, Android only
        numResultsPerClass: 2, // defaults to 5
        threshold: 0.1, // defaults to 0.1
        asynch: true // defaults to true

        );
  }

  Future<void> _showDialog(BuildContext context) {
    // dialog to show options of selecting picture from gallery or camera
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              //S.of(context).pick_an_option,
              "Pick an option",
              //style: TextStyles.TitleBlackText,
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.photo,
                    ),
                    title: Text(
                        //S.of(context).gallery,
                        "Upload Picture"),
                    onTap: () {
                      openGallery(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.camera_alt),
                    title: Text(
                        //S.of(context).camera,
                        "Snap Picture"),
                    onTap: () {
                      openCamera(context);
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  ssdMobileNet(File image) async {
    var output = await Tflite.detectObjectOnImage(
        path: image.path,
        numResultsPerClass: 2,
        model: "SSDMobileNet",
        imageMean: 127.5,
        imageStd: 127.5,
        threshold: 0.4,
        asynch: true);
    setState(() {
      _output = output;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loading = true;

    loadModel().then((value) {
      setState(() {
        loading = false;
      });
    });
  }

  List<Widget> renderBoxes(Size screen) {
    // if (_output = null) return [];
    // if (imageWidth == null || imageHeight == null) return [];
    double factorX = screen.width;
    double factorY = (imageHeight / imageHeight) * screen.width;

    Color blue = Colors.blue;

    return _output?.map((re) {
          return Positioned(
            left: re["rect"]["x"] * factorX, //get left / x coordinate
            top: re["rect"]["y"] * factorY, //get y coordinate
            width: re["rect"]["w"] * factorX,
            height: re["rect"]["h"] * factorY,
            // left: re["rect"]["x"], //get left / x coordinate
            // top: re["rect"]["y"], //get y coordinate
            // width: re["rect"]["w"],
            // height: re["rect"]["h"],
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: blue, width: 3),
              ),
              child: Text(
                "${re["detectedClass"]} ${(re["confidenceInClass"] * 100).toStringAsFixed(0)}%",
                style: TextStyle(
                    background: Paint()..color = blue,
                    color: Colors.white,
                    fontSize: 15),
              ),
            ),
          );
        })?.toList() ??
        [];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;

    List<Widget> stackChildren = [];

    stackChildren.add(Positioned(
        top: 200.0,
        // left: 0.0,
        width: size.width,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // SizedBox(
              //   height: hei * 0.1,
              // ),
              _image == null
                  ? Text("No image selected")
                  : Image.file(
                      _image,
                      width: 50,
                      height: 50,
                    ),
              _output != null
                  ? RaisedButton(
                      color: Colors.red,
                      onPressed: () {
                        for (int i = 0; i < diseaseList.length; i++) {
                          if (diseaseList[i]['title'] ==
                              _output[0]["detectedClass"]) {
                            DiseaseNavigator.gotoPlant(
                                context, diseaseList[i]['onTap']);
                          } else {
                            print("title not found");
                          }
                        }
                      },
                      child: Text(
                        "${_output[0]["detectedClass"]}",
                        style: TextStyles.DiseaseTitle,
                      ),
                    )
                  : //Text("Nothing"),
                  Container(),
              // SizedBox(
              //   height: hei * 0.1,
              // ),
              // RaisedButton(
              //   onPressed: () {
              //     pickVideo(context);
              //   },
              //   child: Text("Upload Video"),
              // )
            ],
          ),
        )));
    stackChildren.addAll(renderBoxes(size));

    if (loading) {
      stackChildren.add(Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.green,
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("AGRIKai"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.more_vert), onPressed: _toggleDropdown),
                OverlayContainer(
                  show: _dropdownShown,
                  // Let's position this overlay to the right of the button.
                  position: OverlayContainerPosition(-50.0, 1.0),

                  // The content inside the overlay.
                  child: Container(
                      height: hei * 0.12,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(
                        top: 0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 3,
                            spreadRadius: 6,
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _dropdownShown = !_dropdownShown;
                                });
                              },
                              child: Text(
                                "Language",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.purple,
                            thickness: 10.0,
                            height: 20.0,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _dropdownShown = !_dropdownShown;
                                });
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PlantHomeScreen()));
                              },
                              child: Text(
                                "Disease    ",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _dropdownShown = false;
          });
        },
        child: Stack(
          children: stackChildren,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog(context);
        },
        tooltip: 'Pick Image',
        backgroundColor: Colors.green,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Tflite.close();
    super.dispose();
  }
}
