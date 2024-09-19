import 'package:car_app/test/provider/greeting_provider.dart';
import 'package:car_app/test/screen_one.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CarApp());
}

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GreetingProvider(),
      child: const MaterialApp(
        home: ScreenOne(),
      ),
    );
  }
}
