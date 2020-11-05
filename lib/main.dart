import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fypapp/screens/home/home_screen.dart';
import 'package:fypapp/screens/localization/demo_localizaton.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';
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
  "/": (BuildContext context) => SplashScreen(),
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
  "/TTMVdisease": (BuildContext context) => TTMVdisease(),
  "/TSMTdisease": (BuildContext context) => TSMTdisease(),
  "/TTSdisease": (BuildContext context) => TTSdisease(),
  "/TTYdisease": (BuildContext context) => TTYdisease(),
  "/onboard": (BuildContext context) => Onboard(),
};

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState state = context.findRootAncestorStateOfType<_MyAppState>();
    state.setLocale(locale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    getLocale().then((locale) {
      // get locale
      setState(() {
        this._locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (_locale == null) {
      return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
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
        //home: SplashScreen(),
        //onUnknownRoute: (settings) => ,
        routes: routes,
        //debugShowCheckedModeBanner: false,
        locale: _locale,
        supportedLocales: [
          Locale('en', 'GB'),
          Locale('ms', 'MY'),
          Locale('zh', 'CN')
        ],
        localizationsDelegates: [
          DemoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (devicelocale, supportedLocales) {
          for (var locale in supportedLocales) {
            if (locale.languageCode == devicelocale.languageCode &&
                locale.countryCode == devicelocale.countryCode) {
              return devicelocale;
            }
          }

          return supportedLocales.first;
        },
      );
    }
  }
}

//{}
//
