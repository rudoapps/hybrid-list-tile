import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
// PRIMARY FONT FAMILY
  static String primaryFont = 'Lato';
  static String secondaryFont = 'Montserrat';

// COLORS
  static const Color primaryColor = Color.fromRGBO(0, 55, 129, 1.0);
  static const Color secondaryColor = Color.fromRGBO(255, 97, 7, 1);
  static const Color whiteColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color blackColor = Color.fromRGBO(0, 0, 0, 1);

// FONT SIZES
  static get fontSizeH1 => 96.0;
  static get fontSizeH2 => 60.0;
  static get fontSizeH3 => 48.0;
  static get fontSizeH4 => 34.0;
  static get fontSizeH5 => 24.0;
  static get fontSizeH6 => 20.0;
  static get fontSizeH7 => 18.0;
  static get fontSizesSubtitle => 18.0;
  static get fontSizesBody => 16.0;
  static get fontSizesButton => 18.0;
  static get fontSizesCaption => 16.0;
  static get fontSizesOverline => 10.0;
  static get fontSizesIcon => 24.0;

// TEXTSTYLES
  // AppBar
  static TextStyle get appBar => GoogleFonts.getFont(primaryFont,
      color: primaryColor,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal);
  // Primary title
  static TextStyle get primaryTitle => GoogleFonts.getFont(primaryFont,
      color: primaryColor,
      fontSize: 34,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal);
  // Secondary title
  static TextStyle get secondaryTitle => GoogleFonts.getFont(secondaryFont,
      color: Colors.white,
      fontSize: 34,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal);
  // Footer
  static TextStyle get footer => GoogleFonts.getFont(primaryFont,
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal);

  // Tittle CustomTile
  static TextStyle get titleTile => GoogleFonts.getFont(primaryFont,
      color: primaryColor,
      fontSize: fontSizeH6,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal);

  // Tittle CustomTile
  static TextStyle get subtitleTile => GoogleFonts.getFont(primaryFont,
      color: secondaryColor,
      fontSize: fontSizesSubtitle,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal);

  // Caption CustomTile
  static TextStyle get caption => GoogleFonts.getFont(primaryFont,
      color: secondaryColor,
      fontSize: fontSizesCaption,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal);

  // OutlinedBall CustomTile
  static TextStyle get outlinedBall => GoogleFonts.getFont(primaryFont,
      color: primaryColor,
      fontSize: fontSizeH7,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal);

  // FilledBall CustomTile
  static TextStyle get filledBall => GoogleFonts.getFont(primaryFont,
      color: whiteColor,
      fontSize: fontSizeH6,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal);

  // Over title right left color CustomTile
  static customListTileOverTitleRightLColor(Color color) => TextStyle(
      color: color,
      fontSize: fontSizesCaption,
      fontWeight: FontWeight.w700,
      fontFamily: primaryFont);

  // Over title right center color CustomTile
  static customListTileSymbolOverTitleRightColor(Color color) => TextStyle(
      color: color,
      fontSize: fontSizesCaption,
      fontWeight: FontWeight.w400,
      fontFamily: primaryFont);

  // Over title right right color CustomTile
  static customListTileOverTitleRightRColor(Color color) => TextStyle(
      color: color,
      fontSize: fontSizesCaption,
      fontWeight: FontWeight.w700,
      fontFamily: primaryFont);

  // Under subtitle left color CustomTile
  static customListTileUnderSubtitleLeftColor(
          Color? color, bool? fontWeightBold) =>
      TextStyle(
          color: color ?? Styles.primaryColor,
          fontSize: fontSizesCaption,
          fontWeight:
              fontWeightBold != null ? FontWeight.bold : FontWeight.normal,
          fontFamily: primaryFont);

  // Under subtitle right color CustomTile
  static customListTileUnderSubtitleRightColor(
          Color color, bool? fontWeightBold) =>
      TextStyle(
          color: color,
          fontSize: fontSizesCaption,
          fontWeight: fontWeightBold! ? FontWeight.bold : FontWeight.normal,
          fontFamily: primaryFont);

// DECORATIONS
  static BoxDecoration get fondoApp => const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
            0.2,
            0.2,
            0.8,
            1.0
          ],
              colors: [
            Colors.black54,
            Colors.black45,
            Color.fromRGBO(32, 51, 145, 1),
            Color.fromRGBO(121, 58, 183, 1)
          ]));

// PRIMARY NOTCH
  static get statusBarPrimary => SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(statusBarColor: primaryColor));

// SECONDARY NOTCH
  static get statusBarSecondary =>
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ));
}

/// Estension of TextStyle
///
/// [TextStyleHelper]
///
/// [bold] Obtains bold instead "fontWeight: FontWeight.bold"
/// [italic] Obtains italic instead "fontStyle: FontStyle.italic"
/// [letterSpace] Adds letter spacing
/// [override] Change any value of GoogleFont TextStyle
extension TextStyleHelper on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle letterSpace(double value) => copyWith(letterSpacing: value);
  TextStyle override(
          {String? fontFamily,
          Color? color,
          double? fontSize,
          FontWeight? fontWeight,
          FontStyle? fontStyle}) =>
      GoogleFonts.getFont(fontFamily ?? Styles.primaryFont,
          color: color ?? this.color,
          fontSize: fontSize ?? this.fontSize,
          fontWeight: fontWeight ?? this.fontWeight,
          fontStyle: fontStyle ?? this.fontStyle);
}
