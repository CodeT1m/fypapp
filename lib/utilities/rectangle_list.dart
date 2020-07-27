import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

List<Map> rectangleList = [
  {
    'title': 'abr',
    'name': 'Apple Black rot',
    'image': 'lib/images/apple/abr1.JPG',
    //'onTap': () => MaterialPageRoute(builder: (context) => ABRdisease())
    //'onTap': () => goToPlant(context, "/ABRdisease")
    'onTap': "/ABRdisease"
  },
  {
    'title': 'as',
    'name': 'Apple Scab',
    'image': 'lib/images/apple/as1.JPG',
    'onTap': "/ASdisease"
  },
  {
    'title': 'ar',
    'name': 'Cedar Apple Rust',
    'image': 'lib/images/apple/ar1.JPG',
    'onTap': "/ARdisease"
  },
  {
    'title': 'cpm',
    'name': 'Cherry Powdery',
    'image': 'lib/images/cherry/cpm1.JPG',
    'onTap': "/CPMdisease"
  },
  {
    'title': 'g_ebm',
    'name': 'Grape Esca (Black measles)',
    'image': 'lib/images/grape/gebm1.JPG',
    'onTap': "/GEBMdisease"
  },
  {
    'title': 'g_br',
    'name': 'Grape Black rot',
    'image': 'lib/images/grape/gbr1.JPG',
    'onTap': "/GBRdisease"
  },
  {
    'title': 'g_Lb',
    'name': 'Grape Leaf blight',
    'image': 'lib/images/grape/gLb1.JPG',
    'onTap': "/GLBdisease"
  },
  {
    'title': 'mLb',
    'name': 'Maize Northern leaf blight',
    'image': 'lib/images/maize/mLb1.JPG',
    'onTap': "/MLBdisease"
  },
  {
    'title': 'mLs',
    'name': 'Maize Gray Leaf Spot',
    'image': 'lib/images/maize/mLs1.JPG',
    'onTap': "/MLSdisease"
  },
  {
    'title': 'mcr',
    'name': 'Maize Common Rust',
    'image': 'lib/images/maize/mcr1.JPG',
    'onTap': "/MCRdisease"
  },
  {
    'title': 'pbs',
    'name': 'Peach bacterial spot',
    'image': 'lib/images/peach/pbs1.JPG',
    'onTap': "/PBSdisease"
  },
  {
    'title': 'pp_bs',
    'name': 'Pepper bacterial spot',
    'image': 'lib/images/pepper/ppbs1.JPG',
    'onTap': "/PPBSdisease"
  },
  {
    'title': 'po_eb',
    'name': 'Potato Early blight',
    'image': 'lib/images/potato/poeb1.JPG',
    'onTap': "/POEBdisease"
  },
  {
    'title': 'po_Lb',
    'name': 'Potato Late blight',
    'image': 'lib/images/potato/poLb1.JPG',
    'onTap': "/POLBdisease"
  },
  {
    'title': 'sberry_Ls',
    'name': 'Strawberry Leaf scorch',
    'image': 'lib/images/sberry/sberryLs1.JPG',
    'onTap': "/SBERRYLSdisease"
  },
  {
    'title': 'squ_pm',
    'name': 'Squash Powdery Mildew',
    'image': 'lib/images/apple/abr1.JPG',
    'onTap': "/SQUPMdisease"
  },
  {
    'title': 'tom_bs',
    'name': 'Tomato Bacterial spot',
    'image': 'lib/images/tomato/tombs1.JPG',
    'onTap': "/TOMBSdisease"
  },
  {
    'title': 'tom_eb',
    'name': 'Tomato Early blight',
    'image': 'lib/images/tomato/tomeb1.JPG',
    'onTap': "/TOMEBdisease"
  },
  {
    'title': 'tom_Lb',
    'name': 'Tomato Late blight',
    'image': 'lib/images/tomato/tomLb1.JPG',
    'onTap': "/TOMLBdisease"
  },
  {
    'title': 'tom_Lm',
    'name': 'Tomato Leaf Mold',
    'image': 'lib/images/tomato/tomLm1.JPG',
    'onTap': "/TOMLMdisease"
  },
  {
    'title': 't_sLs',
    'name': 'Tomato Septoria Leaf Spot',
    'image': 'lib/images/tomato/tsLs1.JPG',
    'onTap': "/TSLSdisease"
  },
  {
    'title': 't_tmv',
    'name': 'Tomato Mosaic Virus',
    'image': 'lib/images/tomato/ttmv1.JPG',
    'onTap': "/TTMVdisease"
  },
  {
    'title': 't_smt',
    'name': 'Tomato Spider Mite',
    'image': 'lib/images/tomato/tsmt1.JPG',
    'onTap': "/TSMTdisease"
  },
  {
    'title': 't_ts',
    'name': 'Tomato Target Spot',
    'image': 'lib/images/tomato/tts1.JPG',
    'onTap': "/TTSdisease"
  },
  {
    'title': 't_ty',
    'name': 'Tomato Yellow Leaf Curl Virus',
    'image': 'lib/images/tomato/tty1.JPG',
    'onTap': "/TTYdisease"
  },
];

class PlantNavigator {
  static gotoPlant(BuildContext context, String route) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      //timeStamp = Duration(seconds: 10);

      Timer(Duration(seconds: 1),
          () => Navigator.popAndPushNamed(context, route));
      //Navigator.popAndPushNamed(context, route);

      //Navigator.pushReplacementNamed(context, route);
    });

    //Navigator.pushNamed(context, route);
    // Route route = MaterialPageRoute(builder: (context) => ABRdisease());
    //       Navigator.push(context, route);
  }
}
