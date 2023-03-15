import 'package:flutter/material.dart';
import 'package:testing_widgets/domain/entities/car/entity.dart';
import 'package:testing_widgets/domain/values/cars_list_value.dart';
import 'package:testing_widgets/libraries/get_it/locator_wrapper.dart';
import 'package:testing_widgets/presentation/blocs/cars_list/bloc.dart';
import 'package:testing_widgets/presentation/screens/car_details/screen.dart';

class CarsListScreen extends StatefulWidget {
  const CarsListScreen({super.key});

  @override
  CarsListScreenState createState() => CarsListScreenState();
}

class CarsListScreenState extends State<CarsListScreen> {
  CarsListBloc listBloc = locator<CarsListBloc>();

  @override
  void initState() {
    super.initState();
    listBloc.loadItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cars'),
      ),
      body: StreamBuilder<CarsListValue>(
        stream: listBloc.carsListStream,
        builder: (BuildContext context, AsyncSnapshot<CarsListValue> snapshot) {
          if (snapshot.hasError) {
            return _displayErrorMessage(snapshot.error.toString());
          } else if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.data!.errorMessage != null) {
            return _displayErrorMessage(snapshot.data!.errorMessage!);
          } else {
            return SingleChildScrollView(
              child: ListView(
                shrinkWrap: true,
                key: const Key('cars_list'),
                physics: const NeverScrollableScrollPhysics(),
                children: snapshot.data!.cars!
                    .map(
                      _buildListRow,
                    )
                    .toList(),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _displayErrorMessage(String errorMessage) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: <Widget>[
            const Spacer(),
            Text(
              errorMessage.replaceFirst(
                '%@',
                errorMessage,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Retry'),
              onPressed: () {
                listBloc.loadItems();
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildListRow(CarEntity car) {
    return Card(
      color: car.isSelected ? Colors.blue.shade200 : Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: (car.url.isEmpty)
                  ? Image.asset(
                      'assets/fallback_image.jpg',
                      height: 150,
                      fit: BoxFit.cover,
                    )
                  : Image.network(
                      car.url,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                car.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            r'$%@/day'.replaceFirst(
              '%@',
              car.pricePerDay.toStringAsFixed(2),
            ),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        onTap: () {
          _displayDetails(car);
        },
      ),
    );
  }

  Future<void> _displayDetails(CarEntity car) async {
    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return CarDetailsScreen(id: car.id);
          // return const Text('Hello');
        },
      ),
    );
  }
}
