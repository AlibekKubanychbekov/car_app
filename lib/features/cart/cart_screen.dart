import 'package:car_app/features/cart/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CartProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: provider.cars.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(provider.cars[index].brand.name),
            subtitle: Text(provider.cars[index].modelName),
            trailing: Text(provider.cars[index].count.toString()),
          ),
        ),
      ),
    );
  }
}
