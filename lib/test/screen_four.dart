import 'package:car_app/test/screen_five.dart';
import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({
    super.key,
  });

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return const ScreenFive();
  }
}
