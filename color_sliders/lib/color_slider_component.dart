import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  final String label;
  final Color color;
  final double value;

  const ColorSlider({
    super.key,
    required this.label,
    required this.color,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label),
              Text(value.toStringAsFixed(3)),
            ],
          ),
        ),
        Slider(
          value: value,
          onChanged: (newValue) {
            print("TODO: Tell the parent the value $newValue");
          },
        ),
      ],
    );
  }
}
