import 'package:car_app/core/common/model/brand/brand.dart';
import 'package:car_app/core/common/model/brand/toyota_brand.dart';
import 'package:car_app/core/common/model/car_models/car_model.dart';
import 'package:car_app/core/common/model/enum/engine.dart';
import 'package:car_app/core/common/model/enum/transmission.dart';

class Camry implements CarModel {
  Camry();

  @override
  Brand get brand => Toyota();

  @override
  Engine get engine => Engine.gasoline;

  @override
  String get modelName => 'Camry';

  @override
  double get price => 25000;

  @override
  Transmission get transmission => Transmission.automatic;

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
