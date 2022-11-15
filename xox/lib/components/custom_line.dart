import 'package:flutter/material.dart';
import '../models/line_model.dart';
Positioned customLine(Line line) {
  return Positioned(
    left: line.fromLeft,
    top: line.fromTop,
    child: RotationTransition(
      turns: AlwaysStoppedAnimation(line.degree / 360),
      child: Container(
        height: line.height,
        width: line.width,
        decoration: BoxDecoration(
          color: line.color,
          borderRadius: BorderRadius.circular(line.borderRadius),
        ),
      ),
    ),
  );
}

