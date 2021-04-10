import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
      platform: TargetPlatform.android,
      scaffoldBackgroundColor: kBackgroundColor,
      primaryColor: kPrimaryColor,
      canvasColor: kBackgroundColor,
      textTheme:GoogleFonts.varelaRoundTextTheme(
      ),
    visualDensity: VisualDensity.comfortable,
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: Colors.grey),
    gapPadding: 12,
  );

  return InputDecorationTheme(
      labelStyle:
      TextStyle(color: Color(0xFFa6e76c), fontSize: 20.0, height: 0.8),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder);
}