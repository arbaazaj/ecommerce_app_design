import 'package:flutter/material.dart';

class ColorChipWidget extends StatelessWidget {
  const ColorChipWidget({
    super.key,
    required this.color,
    required this.borderWidth, required this.borderColor,
  });

  final Color color;
  final double borderWidth;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 20.0,
        width: 20.0,
        decoration: BoxDecoration(
          border: Border.all(
            width: borderWidth,
            color: borderColor,
          ),
          color: color,
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    );
  }
}