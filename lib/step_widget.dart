import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Generate step widget
class StepWidget {
  /// Return a simple step widget with [color] & [size]
  Widget generateSimpleStepWidget(
      {required Color color, required double size}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size),
      child: Container(
        color: color,
        height: size,
        width: size,
        child: Container(),
      ),
    );
  }

  /// Return a selected step widget with [colorIn], [colorOut], [stepSize] & [borderSize]
  Widget generateSelectedStepWidget({
    required Color colorIn,
    required Color colorOut,
    required double stepSize,
    required double borderSize,
    required double paddingSize,
  }) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(stepSize),
        child: Container(
            padding: EdgeInsets.all(paddingSize),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(stepSize),
                border: Border.all(width: borderSize, color: colorOut)),
            height: stepSize,
            width: stepSize,
            child: Container(
              decoration: BoxDecoration(
                color: colorIn,
                borderRadius: BorderRadius.circular(stepSize),
              ),
            )));
  }
}
