import 'package:flutter/material.dart';

class AppFonts {
  static const TextStyle roboto = TextStyle(fontFamily: 'Roboto');
  static const TextStyle notoSans = TextStyle(fontFamily: 'NotoSans');
  static const TextStyle notoSerif = TextStyle(fontFamily: 'NotoSerif');
  static const TextStyle montserrat = TextStyle(fontFamily: 'Montserrat');
  static const TextStyle lato = TextStyle(fontFamily: 'Lato');
  static const TextStyle openSans = TextStyle(fontFamily: 'OpenSans');
  static const TextStyle sourceSansPro = TextStyle(fontFamily: 'SourceSansPro');
  static const TextStyle raleway = TextStyle(fontFamily: 'Raleway');
}

extension FontsExtension on BuildContext {
  AppFonts get fonts => AppFonts();
}
