import 'package:car_app/core/common/model/brand/brand.dart';

class Toyota implements Brand {
  @override
  String get country => 'Japan';

  @override
  String get name => 'Toyota';

  @override
  String get slogan => 'Drive your dream!';
}
