import 'package:flutter/material.dart';

class ColorChipWidget extends StatelessWidget {
  const ColorChipWidget({
    super.key,
    required this.color,
    required this.borderWidth,
    required this.borderColor,
    required this.chipWidth,
    required this.chipHeight,
    required this.borderRadius,
  });

  final Color color;
  final double chipWidth;
  final double chipHeight;
  final double borderWidth;
  final Color borderColor;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: chipHeight,
        width: chipWidth,
        decoration: BoxDecoration(
          border: Border.all(
            width: borderWidth,
            color: borderColor,
          ),
          color: color,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
