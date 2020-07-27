import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color primaryGreen = Color(0xFF416D6D);

List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {
    'name': 'Apple',
    'icon': 'lib/images/apple.png',
  },
  {'name': 'Cherry', 'icon': 'lib/images/cherry.png'},
  {'name': 'Grape', 'icon': 'lib/images/grape.png'},
  {'name': 'Maize', 'icon': 'lib/images/maize.png'},
  {'name': 'Peach', 'icon': 'lib/images/peach.png'},
  {'name': 'Pepper', 'icon': 'lib/images/pepper.png'},
  {'name': 'Potato', 'icon': 'lib/images/potato.png'},
  {'name': 'Raspberry', 'icon': 'lib/images/raspberry.png'},
  {'name': 'Strawberry', 'icon': 'lib/images/strawberry.png'},
  {'name': 'Squash', 'icon': 'lib/images/squash.png'},
  {'name': 'Tomato', 'icon': 'lib/images/tomato.png'},
];
