import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColor {
  static Color purple = Colors.purple;
  static Color green = Colors.green;
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color robinEggBlue = const Color(0xff00b8d4);
  static Color purplePlum = const Color(0xffab47bc);
  static Color pinkLady = const Color(0xffEFC1D6);
}

class AppComponentSizes {
  static double crossSignHeightInTheTable = 11;
  static double crossSignWidthInTheTable = 150;
  static double crossSignHeightInTheSignBox = 11;
  static double crossSignWidthInTheSignBox = 60;
  static double circleBorderWidth = 9;
  static double circleRadiusInTheTable = 82;
  static double circleRadiusInTheSignBox = 60;
  static double tableBorderWidth = 4;
  static double tableBoxHeight = 100;
  static double tableBoxWidth = 100;
  static FixedColumnWidth tableFixedColumnWidth = const FixedColumnWidth(100);
  static double verticalLineHeight = 300;
  static double verticalLineWidth = 8;
  static double horizontalLineHeight = 8;
  static double horizontalLineWidth = 300;
  static double inclinedLineHeight = 8;
  static double inclinedLineWidth = 380;
}

class LineUtility {
  static int noninclinedLineDegree = 0;
  static int leftInclinedDegree = 135;
  static int rightInclinedDegree = 45;
  static double borderRadius = 10;
}

class TextStyles {
  static TextStyle firstPlayer = playerNameTextStyle(AppColor.robinEggBlue);
  static TextStyle secondPlayer = playerNameTextStyle(AppColor.purplePlum);
  static TextStyle gameTitle = GoogleFonts.raleway(
      color: AppColor.purple, fontSize: 50, fontWeight: FontWeight.w600);
  static TextStyle gameResult = GoogleFonts.lato(
      color: AppColor.black, fontSize: 20, fontWeight: FontWeight.w500);
  static TextStyle playerNameTextStyle(Color color) => GoogleFonts.lobster(
      color: color, fontSize: 30, fontWeight: FontWeight.w400);
}

class AppPadding {
  static EdgeInsets crossSignInTheTable =
      const EdgeInsets.symmetric(vertical: 45, horizontal: 4);
  static EdgeInsets crossSignInTheSignBox =
      const EdgeInsets.symmetric(vertical: 30, horizontal: 0);
  static EdgeInsets circleSignInTheTable = const EdgeInsets.all(8);
  static EdgeInsets circleSignInTheSignBox = const EdgeInsets.all(5);
  static EdgeInsets firstPlayerSignBox = const EdgeInsets.only(left: 25);
  static EdgeInsets secondPlayerSignBox = const EdgeInsets.only(right: 25);
}

Text customText(String data, TextStyle textStyle) {
  return Text(data, style: textStyle);
}

SizedBox blankBox() {
  return SizedBox(
    height: AppComponentSizes.tableBoxHeight,
    width: AppComponentSizes.tableBoxWidth,
  );
}

SizedBox customSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Icon restartIcon() {
  return const Icon(
    Icons.restart_alt,
    color: Colors.purple,
    size: 30,
  );
}
