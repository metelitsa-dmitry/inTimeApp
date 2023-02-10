
import 'package:flutter/material.dart';

import 'constants.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      // colorScheme: ColorScheme.fromSwatch(
      //   primarySwatch: Colors.blueGrey,
      //   backgroundColor: const Color(0xFF4A6572),
      //   accentColor: Colors.orange
      // ),
     // primarySwatch: Colors.blueGrey,
      appBarTheme: const AppBarTheme(backgroundColor: appBarBackgroundColor),
      scaffoldBackgroundColor: listBackgroundColor,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: fabBackgroundColor),
        //fontFamily: 'Montserrat',
        // buttonTheme: ButtonThemeData(
        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        //   buttonColor: CustomColors.lightPurple,
        // )
    );
  }

  static ThemeData get lightThemeMaterial3 {
    return ThemeData(
      useMaterial3: true,
      primaryColor: Colors.blueGrey,
      scaffoldBackgroundColor: Colors.white70,
      //fontFamily: 'Montserrat',
      // buttonTheme: ButtonThemeData(
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      //   buttonColor: CustomColors.lightPurple,
      // )
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: Colors.black26,
        scaffoldBackgroundColor: Colors.black,
        //fontFamily: 'Montserrat',
        textTheme: ThemeData.dark().textTheme,
        // buttonTheme: ButtonThemeData(
        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        //   buttonColor: CustomColors.lightPurple,
        // )
    );
  }

  static ThemeData get darkThemeMaterial3 {
    return ThemeData(
      useMaterial3: true,
      primaryColor: Colors.black26,
      scaffoldBackgroundColor: Colors.black,
      //fontFamily: 'Montserrat',
      textTheme: ThemeData.dark().textTheme,
      // buttonTheme: ButtonThemeData(
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      //   buttonColor: CustomColors.lightPurple,
      // )
    );
  }
}