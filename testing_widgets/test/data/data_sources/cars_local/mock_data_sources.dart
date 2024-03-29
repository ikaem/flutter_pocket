import 'dart:async';

import 'package:testing_widgets/data/data_sources/cars_local/data_source.dart';
import 'package:testing_widgets/domain/entities/car/entity.dart';
import 'package:testing_widgets/domain/values/cars_list_value.dart';

// TODO 1: Read the Mock Test Data
class CarsMockDataSource implements CarsDataSource {
  @override
  Future<CarsListValue> loadCars() async {
    final list = <CarEntity>[];
    list.add(
      CarEntity(
        id: 1,
        title: 'Toyota Yaris 2013',
        description: '''
This little 4 doors Toyota provide spacious that fit 5 people 
            with decent trunk space. It is very eco-friendly with great gas 
            mileage. It can easily park in the busy street in Los Angeles.''',
        url: '',
        pricePerDay: 75,
        isSelected: false,
        features: [
          'Remote Keyless Entry',
          'Anti-Lock Brakes (ABS)',
          'Electronic Stability/Skid-Control System',
          'Telescoping Steering Wheel',
        ],
      ),
    );
    list.add(
      CarEntity(
        id: 2,
        title: 'Mercedes-Benz 2017',
        description: '''
Fully loaded black on black.  On top of the standard options 
            includes: Nappa Leather Interior, Heads Up Display, 20" AMG 
            Multispoke wheels, Premium 1 Package (Ventilated seats, keyless go, 
            parktronic, active multicontour seats with massage, rapid heating 
            seats)''',
        url: '',
        pricePerDay: 175,
        isSelected: false,
        features: [
          'Remote Keyless Entry',
          'Anti-Lock Brakes (ABS)',
          'Electronic Stability/Skid-Control System',
          'Telescoping Steering Wheel',
        ],
      ),
    );
    list.add(
      CarEntity(
        id: 3,
        title: 'Hyundai Sonata 2017',
        description: '''
Great on ⛽️, Roomy and comfortable for long distance trips , AUX 
            and USB input.''',
        url: '',
        pricePerDay: 275,
        isSelected: true,
        features: [
          'Remote Keyless Entry',
          'Anti-Lock Brakes (ABS)',
          'Electronic Stability/Skid-Control System',
          'Telescoping Steering Wheel',
        ],
      ),
    );
    list.add(
      CarEntity(
        id: 4,
        title: 'Tesla Model X 2018',
        description: '''
Meticulously maintained, but unfortunately the vehicle had a 
            recent minor accident that damaged the rear right wheel's trim 
            piece, but otherwise doesn't affect any of the sensors, waiting on 
            tesla parts for a replacement. You will otherwise be renting a 
            vehicle in impeccable shape with the deepest blacks with no tears, 
            stains, food particles in crevices and interior is detailed after 
            every rental. I have multiple Teslas  with renters experience in 
            mind first and foremost. Will happily help above and beyond 
            reasonable expectations. Equally good service as well as rates.''',
        url: '',
        pricePerDay: 375,
        isSelected: false,
        features: [
          'Remote Keyless Entry',
          'Anti-Lock Brakes (ABS)',
          'Electronic Stability/Skid-Control System',
          'Telescoping Steering Wheel',
        ],
      ),
    );
    list.add(
      CarEntity(
        id: 5,
        title: 'Tesla Model S 2018',
        description: '''
Fully loaded and equipped with autopilot, Ludicrous and 
            Ludicrous+ mode, free LTE internet, Google navigation system, full 
            glass panoramic sunroof, carbon fiber interior, upgraded sound 
            system, upgraded climate control system with all heated or cooling 
            white leather seats and many more upgraded premium options.''',
        url: '',
        pricePerDay: 475,
        isSelected: false,
        features: [
          'Remote Keyless Entry',
          'Anti-Lock Brakes (ABS)',
          'Electronic Stability/Skid-Control System',
          'Telescoping Steering Wheel',
        ],
      ),
    );
    list.add(
      CarEntity(
        id: 6,
        title: 'Scion xD 2014',
        description: 'Great gas saver , AUX input.',
        url: '',
        pricePerDay: 575,
        isSelected: false,
        features: [
          'Remote Keyless Entry',
          'Anti-Lock Brakes (ABS)',
          'Electronic Stability/Skid-Control System',
          'Telescoping Steering Wheel',
        ],
      ),
    );
    return Future.value(CarsListValue(cars: list, errorMessage: null));
  }
}
