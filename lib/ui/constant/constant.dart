import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// [SPACING]
///
const double defaultMargin = 20.0;

///
/// [MEDIA QUERY]
///
double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

///
/// [COLOR]
///
const Color primaryColor = Color(0xff2347f9);
const Color secondaryColor = Color(0xffF5F8FD);

const Color footerColor = Color(0xff1b1b1b);
const Color alertColor = Color(0xffED6363);

const Color blackColor = Color(0xFF3C3C3C);
const Color whiteColor = Colors.white;
const Color greyColor = Colors.grey;

const Color fontPrimaryColor = Color(0xff34364A);

Color greyShadeColor = Colors.grey.shade300;

const Color bg = Color(0xFFEDEDEF);

Color get shadowColor => Colors.black.withOpacity(.05);
BoxShadow get shadow => BoxShadow(color: shadowColor, blurRadius: 5, spreadRadius: 1);

///
/// [FONT WEIGHT]
///
const FontWeight light = FontWeight.w300;
const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;
const FontWeight semiBold = FontWeight.w600;
const FontWeight bold = FontWeight.w700;

///
/// [STYLE - TEXT FIELD]
///
InputDecoration fieldDecoration(String? value) => InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade100),
      ),
      labelText: value,
    );

///
/// [STYLE - TEXT BUTTON]
///
ButtonStyle get normalButton => TextButton.styleFrom(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      primary: Colors.white,
    );
ButtonStyle get borderButton => TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: primaryColor),
      ),
    );

///
/// [STATUS BAR]
///
void setStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ),
  );
}

///
/// [STYLE - TEXT STYLE]
///
const TextStyle displayLarge = TextStyle();
const TextStyle displayMedium = TextStyle();
const TextStyle displaySmall = TextStyle();
const TextStyle hedlineLarge = TextStyle(fontSize: 32);
const TextStyle hedlineMedium = TextStyle();
const TextStyle hedlineSmall = TextStyle();
const TextStyle titleLarge = TextStyle();
const TextStyle titleMedium = TextStyle(fontSize: 16);
const TextStyle titleSmall = TextStyle(fontSize: 14);
const TextStyle labelLarge = TextStyle();
const TextStyle labelMedium = TextStyle();
const TextStyle labelSmall = TextStyle();
const TextStyle bodyLarge = TextStyle();
const TextStyle bodyMedium = TextStyle();
const TextStyle bodySmall = TextStyle();

const TextStyle styleTitle = TextStyle(fontSize: 20);
const TextStyle styleSubtitle = TextStyle(fontSize: 14);
