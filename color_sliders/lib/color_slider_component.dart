import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  final String label;
  final Color color;
  final double value;
  final void Function(double) sliderChanged;

  const ColorSlider({
    super.key,
    required this.label,
    required this.color,
    required this.value,
    required this.sliderChanged,
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
          activeColor: color,
          // onChanged: (newValue) {
          //   print("TODO: Tell the parent the value $newValue");
          //   sliderChanged(newValue);
          // },
          onChanged: sliderChanged,
        ),
      ],
    );
  }
}
