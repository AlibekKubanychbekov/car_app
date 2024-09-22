import 'package:car_app/core/common/model/brand/brand.dart';

class Bmw implements Brand {
  @override
  String get country => 'Deutschland';

  @override
  String get name => 'BMW';

  @override
  String get slogan => 'For the pleasure of driving';
}
