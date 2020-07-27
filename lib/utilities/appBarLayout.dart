import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fypapp/utilities/styles.dart';

class AppBarLayout extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarLayout({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyles.AppBarText,
      ),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.green,
      leading: InkWell(
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.share), onPressed: () {}),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
