import 'package:car_app/test/screen_four.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({
    super.key,
  });

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return const ScreenFour();
  }
}
