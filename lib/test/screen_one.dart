import 'package:car_app/test/provider/greeting_provider.dart';
import 'package:car_app/test/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ScreenTwo(),
          ElevatedButton(
              onPressed: () {
                context.read<GreetingProvider>().increase();
                (context.read<GreetingProvider>().count.toString());
              },
              child: const Text('+100')),
          ElevatedButton(
              onPressed: () {
                context.read<GreetingProvider>().decrease();
                (context.read<GreetingProvider>().count.toString());
              },
              child: const Text('-100')),
        ],
      ),
    );
  }
}
