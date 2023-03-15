import 'package:testing_widgets/domain/entities/car/entity.dart';

class CarsListValue {
  const CarsListValue({
    required this.cars,
    required this.errorMessage,
  });
  final List<CarEntity>? cars;
  final String? errorMessage;
}
