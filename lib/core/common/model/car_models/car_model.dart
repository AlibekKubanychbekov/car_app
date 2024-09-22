import 'package:car_app/core/common/model/brand/brand.dart';
import 'package:car_app/core/common/model/enum/engine.dart';
import 'package:car_app/core/common/model/enum/transmission.dart';

class CarModel {
  final Brand brand;
  final String modelName;
  final Transmission transmission;
  final Engine engine;
  final double price;
  final int count;

  CarModel(
      {required this.brand,
      required this.modelName,
      required this.transmission,
      required this.engine,
      required this.price,
      required this.count});

  CarModel copyWith({
    Brand? brand,
    String? modelName,
    Transmission? transmission,
    Engine? engine,
    double? price,
    int? count,
  }) {
    return CarModel(
      brand: brand ?? this.brand,
      modelName: modelName ?? this.modelName,
      transmission: transmission ?? this.transmission,
      engine: engine ?? this.engine,
      price: price ?? this.price,
      count: count ?? this.count,
    );
  }
}
