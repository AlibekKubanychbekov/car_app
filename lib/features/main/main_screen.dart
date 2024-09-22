import 'package:car_app/core/common/model/car_models/bmw/f10.dart';
import 'package:car_app/core/common/model/car_models/car_model.dart';
import 'package:car_app/core/common/model/car_models/toyota/camry.dart';
import 'package:car_app/features/cart/cart_provider.dart';
import 'package:car_app/features/cart/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final cars = <CarModel>[
  F10(),
  Camry(),
];

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const CartScreen(),
                ),
              );
            },
            icon: Stack(
              children: [
                const SizedBox(
                  height: 100,
                  child: Icon(
                    Icons.shopping_cart_outlined,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffC64949)),
                    child: Text(
                      context.watch<CartProvider>().cars.length.toString(),
                      style: const TextStyle(color: Color(0xff988080)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: cars.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              context.read<CartProvider>().addToCart(
                    car: cars[index],
                  );
            },
            child: Container(
              color: const Color(0xff95BCCC),
              child: ListTile(
                title: Text(cars[index].brand.name),
                subtitle: Text(cars[index].modelName),
                trailing: Text(cars[index].price.toString()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
