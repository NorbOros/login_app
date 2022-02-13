import 'package:devlogie_product_card/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeDataLight {
  static ThemeData getThemeData() {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        surface: Colors.white,
      ),
      fontFamily: GoogleFonts.montserrat().fontFamily,
      textTheme: ThemeData.light().textTheme.copyWith(
            headline1: const TextStyle(
              color: ColorConstants.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            headline2: const TextStyle(
              color: ColorConstants.white,
              fontSize: 35,
              fontWeight: FontWeight.w400,
            ),
            bodyText1: const TextStyle(
              color: ColorConstants.black,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
            bodyText2: const TextStyle(
              color: ColorConstants.grey,
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
          ),
    );
  }
}
