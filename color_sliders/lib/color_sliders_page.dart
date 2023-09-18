import 'package:color_sliders/color_slider_component.dart';
import 'package:flutter/material.dart';

class ColorSlidersPage extends StatefulWidget {
  const ColorSlidersPage({super.key});

  @override
  State<ColorSlidersPage> createState() => _ColorSlidersPageState();
}

class _ColorSlidersPageState extends State<ColorSlidersPage> {
  double redValue = 0.5;
  double greenValue = 0.0;
  double blueValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Sliders"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          ColorSlider(
            label: "Red",
            color: Colors.red,
            value: redValue,
            sliderChanged: (newValue) {
              setState(() {
                redValue = newValue;
              });
            },
          ),
          ColorSlider(
            label: "Green",
            color: Colors.green,
            value: greenValue,
            sliderChanged: (newValue) {
              setState(() {
                greenValue = newValue;
              });
            },
          ),
          ColorSlider(
            label: "Blue",
            color: Colors.blue,
            value: blueValue,
            sliderChanged: (newValue) {
              setState(() {
                blueValue = newValue;
              });
            },
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.all(20.0),
            color: Color.fromRGBO(
              (redValue * 255).round(),
              (greenValue * 255).round(),
              (blueValue * 255).round(),
              1.0,
            ),
          ))
        ],
      ),
    );
  }
}
