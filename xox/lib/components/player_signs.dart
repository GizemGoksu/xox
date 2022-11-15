import 'package:flutter/material.dart';
import 'package:xox/components/custom_line.dart';
import 'package:xox/models/line_model.dart';
import '../core/base.utility.dart';
Padding crossSign(double height,double width,EdgeInsets padding) {
  return Padding(
    padding: padding,
    child: Stack(
      children: [
        customLine(Line(height: height, width: width, color: AppColor.robinEggBlue, degree: 135, borderRadius: 20)),
        customLine(Line(height: height, width: width, color: AppColor.robinEggBlue, degree: 45, borderRadius: 20))
      ]),
  );
}
Padding circleSign(double radius,EdgeInsets padding) {
    return Padding(
                  padding: padding,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColor.purplePlum,
                              width: AppComponentSizes.circleBorderWidth)),
                      height: radius,
                      width: radius,
                    ),
                  );
  }
