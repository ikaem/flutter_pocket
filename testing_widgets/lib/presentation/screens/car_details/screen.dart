import 'package:flutter/material.dart';
import 'package:testing_widgets/domain/entities/car/entity.dart';
import 'package:testing_widgets/libraries/get_it/locator_wrapper.dart';
import 'package:testing_widgets/presentation/blocs/car_detail/bloc.dart';
import 'package:testing_widgets/presentation/blocs/cars_list/bloc.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({
    required this.id,
    super.key,
  });

  final int id;

  @override
  CarDetailsScreenState createState() => CarDetailsScreenState();
}

class CarDetailsScreenState extends State<CarDetailsScreen> {
  CarDetailsBloc carDetailsBloc = locator<CarDetailsBloc>();
  CarsListBloc carsListBloc = locator<CarsListBloc>();

  @override
  void initState() {
    super.initState();
    carDetailsBloc.getItem(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<CarEntity?>(
          stream: carDetailsBloc.carStream,
          builder: (BuildContext context, AsyncSnapshot<CarEntity?> snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Text(snapshot.data!.title);
            }
          },
        ),
      ),
      body: StreamBuilder<CarEntity?>(
        key: const Key('car_details'),
        stream: carDetailsBloc.carStream,
        builder: (BuildContext context, AsyncSnapshot<CarEntity?> snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return _buildDetailsView(snapshot.data!);
          }
        },
      ),
    );
  }

  Text _buildFeaturesView(List<dynamic> features) {
    final allFeatures = StringBuffer();
    for (final feature in features) {
      allFeatures.write('\n $feature \n');
    }
    return Text(allFeatures.toString());
  }

  Widget _buildDetailsView(CarEntity item) {
    final Widget button = item.isSelected
        ? ElevatedButton(
            child: const Text('DESELECT'),
            onPressed: () => carsListBloc.onDeselectItem(widget.id),
          )
        : ElevatedButton(
            child: const Text('SELECT'),
            onPressed: () => carsListBloc.onSelectItem(widget.id),
          );
    return Container(
      padding: const EdgeInsets.all(24),
      child: ListView(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            child: (item.url.isEmpty)
                ? Image.asset(
                    'assets/fallback_image.jpg',
                    height: 150,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    item.url,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
          ),
          const SizedBox(
            height: 11,
          ),
          Text(
            item.isSelected ? 'SELECTED' : 'NOT SELECTED',
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 22,
          ),
          Text(item.description),
          const SizedBox(
            height: 33,
          ),
          const Text(
            'Features',
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          _buildFeaturesView(item.features),
          const SizedBox(
            height: 8,
          ),
          button
        ],
      ),
    );
  }
}
