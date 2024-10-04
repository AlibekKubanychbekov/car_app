import 'package:car_app/features/cart/cart_provider.dart';
import 'package:car_app/features/main/main_screen.dart';
import 'package:car_app/test/provider/greeting_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CarApp());
}

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GreetingProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: const MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}
