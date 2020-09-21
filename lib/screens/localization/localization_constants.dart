import 'package:flutter/cupertino.dart';
import 'package:fypapp/screens/localization/demo_localizaton.dart';
import 'package:shared_preferences/shared_preferences.dart';

String getTranslated(BuildContext context, String key) {
  return DemoLocalizations.of(context).getTranslatedValue(key);
}

// language Code
const String ENGLISH = 'en';
const String MALAY = 'ms';
const String CHINESE = 'zh';

const String LANGUAGE_CODE = 'languageCode';
//get language code and persist language in shared preferences
Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();

  await _prefs.setString(LANGUAGE_CODE, languageCode);

  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  Locale _temp;
  switch (languageCode) {
    case ENGLISH:
      _temp = Locale(languageCode, 'GB');
      break;
    case MALAY:
      _temp = Locale(languageCode, 'MY');
      break;
    case CHINESE:
      _temp = Locale(languageCode, 'CN');
      break;
    default:
      _temp = Locale(ENGLISH, 'GB');
  }
  return _temp;
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();

  String languageCode = _prefs.getString(LANGUAGE_CODE) ??
      ENGLISH; //if this is null, we use ENGLISH as our default lang
  return _locale(languageCode);
}
