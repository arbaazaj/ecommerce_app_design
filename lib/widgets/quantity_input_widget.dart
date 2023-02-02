import 'package:ecommerce_app/themes/colors.dart';
import 'package:ecommerce_app/widgets/color_chip_widget.dart';
import 'package:flutter/material.dart';

class QuantityInputWidget extends StatefulWidget {
  const QuantityInputWidget(
      {super.key, required this.addItem, required this.removeItem});

  final VoidCallback addItem;
  final VoidCallback removeItem;

  @override
  State<QuantityInputWidget> createState() => _QuantityInputWidgetState();
}

class _QuantityInputWidgetState extends State<QuantityInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            ColorChipWidget(
              color: darkViolet,
              borderWidth: 0.0,
              borderColor: Colors.transparent,
              chipWidth: 35.0,
              chipHeight: 35.0,
              borderRadius: BorderRadius.circular(12.0),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: IconButton(
                  icon: const Icon(Icons.remove_rounded, color: Colors.white),
                  onPressed: widget.removeItem,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 20.0),
        const Text(
          '1',
          style: TextStyle(fontSize: 26.0),
        ),
        const SizedBox(width: 20.0),
        Stack(
          children: [
            ColorChipWidget(
              color: Colors.white,
              borderWidth: 0.0,
              borderColor: Colors.transparent,
              chipWidth: 35.0,
              chipHeight: 35.0,
              borderRadius: BorderRadius.circular(12.0),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: widget.addItem,
                  icon: const Icon(Icons.add_rounded),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
