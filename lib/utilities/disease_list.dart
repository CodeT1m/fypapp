import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

List<Map> diseaseList = [
  {'title': "abr", 'diseaseName': "Apple - Black rot", 'onTap': "/ABRdisease"},
  {'title': "as", 'diseaseName': "Apple - Apple Scab", 'onTap': "/ASdisease"},
  {
    'title': "ar",
    'diseaseName': "Apple - Cedar Apple Rust",
    'onTap': "/ARdisease"
  },
  {
    'title': "cpm",
    'diseaseName': "Cherry Powdery Mildew",
    'onTap': "/CPMdisease"
  },
  {
    'title': "g_ebm",
    'diseaseName': "Grape Esca (Black measles)",
    'onTap': "/GEBMdisease"
  },
  {'title': "g_br", 'diseaseName': "Grape Black rot", 'onTap': "/GBRdisease"},
  {'title': "g_Lb", 'diseaseName': "Grape Leaf blight", 'onTap': "/GLBdisease"},
  {
    'title': "mLb",
    'diseaseName': "Maize Northern leaf blight",
    'onTap': "/MLBdisease"
  },
  {
    'title': "mLs",
    'diseaseName': "Maize Gray Leaf Spot",
    'onTap': "/MLSdisease"
  },
  {'title': "mcr", 'diseaseName': "Maize Common Rust", 'onTap': "/MCRdisease"},
  {
    'title': "pbs",
    'diseaseName': "Peach bacterial spot",
    'onTap': "/PBSdisease"
  },
  {
    'title': "pp_bs",
    'diseaseName': "Pepper bacterial spot",
    'onTap': "/PPBSdisease"
  },
  {
    'title': "po_eb",
    'diseaseName': "Potato Early blight",
    'onTap': "/POEBdisease"
  },
  {
    'title': "po_Lb",
    'diseaseName': "Potato Late blight",
    'sName': "Phytophthora infestans.",
    'onTap': "/POLBdisease"
  },
  {
    'title': "sberry_Ls",
    'diseaseName': "Strawberry Leaf scorch",
    'onTap': "/SBERRYLSdisease"
  },
  {
    'title': "squ_pm",
    'diseaseName': "Squash Powdery Mildew",
    'onTap': "/SQUPMdisease"
  },
  {
    'title': "tom_bs",
    'diseaseName': "Tomato Bacterial spot",
    'onTap': "/TOMBSdisease"
  },
  {
    'title': "tom_eb",
    'diseaseName': "Tomato Early blight",
    'onTap': "/TOMEBdisease"
  },
  {
    'title': "tom_Lb",
    'diseaseName': "Tomato Late blight",
    'onTap': "/TOMLBdisease"
  },
  {
    'title': "tom_Lm",
    'diseaseName': "Tomato Leaf Mold",
    'onTap': "/TOMLMdisease"
  },
  {
    'title': "t_sLs",
    'diseaseName': "Tomato Septoria Leaf Spot",
    'onTap': "/TSLSdisease"
  },
  {
    'title': "t_tmv",
    'diseaseName': "Tomato Mosaic Virus",
    'onTap': "/TTMVdisease"
  },
  {
    'title': "t_smt",
    'diseaseName': "Tomato Spider Mite",
    'onTap': "/TSMTdisease"
  },
  {
    'title': "t_ts",
    'diseaseName': "Tomato Target spot",
    'onTap': "/TTSdisease"
  },
  {
    'title': "t_ty",
    'diseaseName': "Tomato Yellow Leaf Curl Virus",
    'onTap': "/TTYdisease"
  }
];

class DiseaseNavigator {
  static gotoPlant(BuildContext context, String route) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      Timer(
          Duration(seconds: 1),
          // () => Navigator.popAndPushNamed(context, route));
          () => Navigator.pushNamed(context, route));
    });
  }
}
