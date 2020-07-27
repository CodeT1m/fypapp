import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BoxContainer extends StatelessWidget {
  final Function onTap1, onTap2;
  final String text1, text2;
  BoxContainer({this.onTap1, this.onTap2, this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;

    return Container(
      child: Stack(
        children: <Widget>[
          Container(
              height: hei * 0.17,
              width: wid * 0.1,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: onTap1,
                    child: Text(text1),
                  ),
                  Divider(),
                  InkWell(
                    onTap: onTap2,
                    child: Text(text2),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
