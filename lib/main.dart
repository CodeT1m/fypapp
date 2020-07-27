import 'package:flutter/material.dart';
import 'package:fypapp/screens/home/home_screen.dart';
import 'package:fypapp/screens/plants/apple/apple_blackrot.dart';
import 'package:fypapp/screens/plants/apple/apple_scab.dart';
import 'package:fypapp/screens/plants/apple/cedar_applerust.dart';
import 'package:fypapp/screens/plants/cherry/cherry_mildew.dart';
import 'package:fypapp/screens/plants/grape/grape_blackmeasles.dart';
import 'package:fypapp/screens/plants/grape/grape_blackrot.dart';
import 'package:fypapp/screens/plants/grape/grape_leafblight.dart';
import 'package:fypapp/screens/plants/maize/maize_leafblight.dart';
import 'package:fypapp/screens/plants/maize/maize_rust.dart';
import 'package:fypapp/screens/plants/peach/peach_bacterial.dart';
import 'package:fypapp/screens/plants/pepper/pepper_bacterial.dart';
import 'package:fypapp/screens/plants/potato/potato_earlyb.dart';
import 'package:fypapp/screens/plants/potato/potato_lateb.dart';
import 'package:fypapp/screens/plants/sberry/sberry_scorch.dart';
import 'package:fypapp/screens/plants/squash/squash_mildew.dart';
import 'package:fypapp/screens/plants/tomato/tomato_bacterial.dart';
import 'package:fypapp/screens/plants/tomato/tomato_earlyb.dart';
import 'package:fypapp/screens/plants/tomato/tomato_lateb.dart';
import 'package:fypapp/screens/plants/tomato/tomato_leafspot.dart';
import 'package:fypapp/screens/plants/tomato/tomato_mosaicv.dart';
import 'package:fypapp/screens/plants/tomato/tomato_spiderm.dart';
import 'package:fypapp/screens/plants/tomato/tomato_tspot.dart';
import 'package:fypapp/screens/plants/tomato/tomato_yellow.dart';
import 'package:fypapp/splashscreen/onboard.dart';
import 'package:fypapp/splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

var routes = <String, WidgetBuilder>{
  "/onboard": (BuildContext context) => Onboard(),
  "/home": (BuildContext context) => HomeScreen(),
  "/ABRdisease": (BuildContext context) => ABRdisease(),
  "/ASdisease": (BuildContext context) => ASdisease(),
  "/ARdisease": (BuildContext context) => ARdisease(),
  "/CPMdisease": (BuildContext context) => CPMdisease(),
  "/GEBMdisease": (BuildContext context) => GEBMdisease(),
  "/GBRdisease": (BuildContext context) => GBRdisease(),
  "/GLBdisease": (BuildContext context) => GLBdisease(),
  "/MLBdisease": (BuildContext context) => MLBdisease(),
  "/MLSdisease": (BuildContext context) => MLBdisease(),
  "/MCRdisease": (BuildContext context) => MCRdisease(),
  "/PBSdisease": (BuildContext context) => PBSdisease(),
  "/PPBSdisease": (BuildContext context) => PPBSdisease(),
  "/POEBdisease": (BuildContext context) => POEBdisease(),
  "/POLBdisease": (BuildContext context) => POLBdisease(),
  "/SBERRYLSdisease": (BuildContext context) => SBERRYLSdisease(),
  "/SQUPMdisease": (BuildContext context) => SQUPMdisease(),
  "/TOMBSdisease": (BuildContext context) => TOMBSdisease(),
  "/TOMEBdisease": (BuildContext context) => TOMEBdisease(),
  "/TOMLBdisease": (BuildContext context) => TOMLBdisease(),
  "/TOMLMdisease": (BuildContext context) => TOMLBdisease(),
  "/TSLSdisease": (BuildContext context) => TSLSdisease(),
  "/TTMVPMdisease": (BuildContext context) => TTMVdisease(),
  "/TSMTdisease": (BuildContext context) => TSMTdisease(),
  "/TTSdisease": (BuildContext context) => TTSdisease(),
  "/TTYdisease": (BuildContext context) => TTYdisease(),
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          fontFamily: 'Montserrat'),
      home: SplashScreen(),
      routes: routes,
      //debugShowCheckedModeBanner: false,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
