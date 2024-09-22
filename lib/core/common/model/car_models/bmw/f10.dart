import 'package:car_app/core/common/model/brand/bmw.dart';
import 'package:car_app/core/common/model/brand/brand.dart';
import 'package:car_app/core/common/model/car_models/car_model.dart';
import 'package:car_app/core/common/model/enum/engine.dart';
import 'package:car_app/core/common/model/enum/transmission.dart';

class F10 extends CarModel {
  F10({
    required super.brand,
    required super.modelName,
    required super.transmission,
    required super.engine,
    required super.price,
    required super.count,
  });

  @override
  Brand get brand => Bmw();

  @override
  Engine get engine => Engine.gasoline;

  @override
  String get modelName => 'F10';

  @override
  double get price => 20000;

  @override
  Transmission get transmission => Transmission.manual;

  @override
  int get count => 1;

  @override
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
