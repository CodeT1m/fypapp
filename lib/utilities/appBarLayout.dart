import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fypapp/main.dart';
import 'package:fypapp/screens/classes/language.dart';
import 'package:fypapp/screens/localization/localization_constants.dart';
import 'package:fypapp/utilities/styles.dart';

class AppBarLayout extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  const AppBarLayout({
    this.title,
  });

  @override
  _AppBarLayoutState createState() => _AppBarLayoutState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarLayoutState extends State<AppBarLayout> {
  void _changeLanguage(Language language) async {
    print(language.languageCode);
    Locale _temp = await setLocale(language.languageCode);

    MyApp.setLocale(context, _temp);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.title,
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
        Padding(
          padding: EdgeInsets.all(8.0),
          child: DropdownButton(
            icon: Icon(Icons.language, color: Colors.white),
            underline: SizedBox(),
            items: Language.languageList()
                .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
                    value: lang,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          lang.name,
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(lang.flag)
                      ],
                    )))
                .toList(),
            onChanged: (Language language) {
              _changeLanguage(language);
            },
          ),
        ),
      ],
    );
  }

  // @override
  // TODO: implement preferredSize
  //Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
