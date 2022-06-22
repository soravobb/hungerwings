
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColor {
  static const Color secondaryRed = Color(0xff911a1c);
  static const Color primaryRed = Color(0xffcd2026);
}

class FontConstant {
  static TextStyle getTextStyle(Color color,
      double fontSize, {
        FontWeight? fontWeight,
      }) {
    return GoogleFonts.montserrat(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static TextStyle lightText = GoogleFonts.montserrat(
      fontWeight: FontWeight.normal, fontSize: 12, color: Color(0xff7e807f));
  static TextStyle normaltext = GoogleFonts.montserrat(
      fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white);

}
  logo(w1, h1, w, h,) {
    return SizedBox(
      width: w1,
      height: h1,
      child: Center(
        child: Image(
          image: const AssetImage("assets/images/logo.png"),
          width: w,
          height: h,
        ),
      ),);
  }
