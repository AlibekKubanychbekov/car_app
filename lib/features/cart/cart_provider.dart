import 'package:car_app/core/common/model/car_models/car_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<CarModel> cars = [];

  void addToCart({required CarModel car}) {
    bool isFound = false;
    for (var i = 0; i < cars.length; i++) {
      if (cars[i].brand.name == car.brand.name) {
        cars[i] = cars[i].copyWith(count: cars[i].count + 1);
        isFound = true;
      }
    }
    if (isFound == false) {
      cars.add(car);
    }
    notifyListeners();
  }
}
