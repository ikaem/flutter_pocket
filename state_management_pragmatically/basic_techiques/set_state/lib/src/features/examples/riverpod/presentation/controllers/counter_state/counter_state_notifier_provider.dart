import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:set_state/src/features/examples/riverpod/presentation/controllers/counter_state/counter_state_notifer.dart';
import 'package:set_state/src/features/examples/riverpod/presentation/domain/models/counter/model.dart';

final StateNotifierProvider<CounterStateNotifier, CounterModel>
    counterStateNotifierProvider =
    StateNotifierProvider<CounterStateNotifier, CounterModel>(
        (ref) => CounterStateNotifier());
