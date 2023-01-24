
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: false,
        primaryColor: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white70,
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