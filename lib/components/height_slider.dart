import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  HeightSlider({
    @required this.height,
    @required this.onChangingSlider,
  });

  final int height;
  final Function onChangingSlider;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.white,
        thumbColor: Color(0xFFEB1555),
        overlayColor: Color(0x1FEB1555),
        inactiveTrackColor: Color(0xFF8D8E98),
        thumbShape: RoundSliderThumbShape(
          enabledThumbRadius: 15.0,
        ),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
      ),
      child: Slider(
        value: height.toDouble(),
        min: 120.0,
        max: 220.0,
        onChanged: (double newHeight) {
          onChangingSlider(newHeight);
        },
      ),
    );
  }
}
