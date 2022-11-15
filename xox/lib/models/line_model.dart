import 'package:flutter/material.dart';
import 'package:xox/core/base.utility.dart';
import '../components/custom_line.dart';

class Line {
  double height;
  double width;
  Color color;
  double? fromTop;
  double? fromLeft;
  int degree;
  double borderRadius;
  Line(
      {required this.height,
      required this.width,
      required this.color,
      this.fromLeft,
      this.fromTop,
      required this.degree,
      required this.borderRadius});
}

List<Line> lines = [
  Line(
      height: AppComponentSizes.horizontalLineHeight,
      width: AppComponentSizes.horizontalLineWidth,
      color: AppColor.pinkLady,
      degree: LineUtility.noninclinedLineDegree,
      borderRadius: LineUtility.borderRadius,
      fromTop: 46),
  Line(
      height: AppComponentSizes.horizontalLineHeight,
      width: AppComponentSizes.horizontalLineWidth,
      color: AppColor.pinkLady,
      degree: LineUtility.noninclinedLineDegree,
      borderRadius: LineUtility.borderRadius,
      fromTop: 146),
  Line(
      height: AppComponentSizes.horizontalLineHeight,
      width: AppComponentSizes.horizontalLineWidth,
      color: AppColor.pinkLady,
      degree: LineUtility.noninclinedLineDegree,
      borderRadius: LineUtility.borderRadius,
      fromTop: 246),
  Line(
      height: AppComponentSizes.verticalLineHeight,
      width: AppComponentSizes.verticalLineWidth,
      color: AppColor.pinkLady,
      degree: LineUtility.noninclinedLineDegree,
      borderRadius: LineUtility.borderRadius,
      fromLeft: 46),
  Line(
      height: AppComponentSizes.verticalLineHeight,
      width: AppComponentSizes.verticalLineWidth,
      color: AppColor.pinkLady,
      degree: LineUtility.noninclinedLineDegree,
      borderRadius: LineUtility.borderRadius,
      fromLeft: 146),
  Line(
      height: AppComponentSizes.verticalLineHeight,
      width: AppComponentSizes.verticalLineWidth,
      color: AppColor.pinkLady,
      degree: LineUtility.noninclinedLineDegree,
      borderRadius: LineUtility.borderRadius,
      fromLeft: 246),
  Line(
      height: AppComponentSizes.inclinedLineHeight,
      width: AppComponentSizes.inclinedLineWidth,
      color: AppColor.pinkLady,
      degree: LineUtility.rightInclinedDegree,
      borderRadius: LineUtility.borderRadius,
      fromLeft: -40,
      fromTop: 148),
  Line(
      height: AppComponentSizes.inclinedLineHeight,
      width: AppComponentSizes.inclinedLineWidth,
      color: AppColor.pinkLady,
      degree: LineUtility.leftInclinedDegree,
      borderRadius: LineUtility.borderRadius,
      fromLeft: -40,
      fromTop: 148),
];

List<Widget> lineWidgets = [
  customLine(lines[0]),
  customLine(lines[1]),
  customLine(lines[2]),
  customLine(lines[3]),
  customLine(lines[4]),
  customLine(lines[5]),
  customLine(lines[6]),
  customLine(lines[7]),
];
