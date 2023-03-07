import 'package:get/get.dart';
import 'package:set_state/src/features/examples/getx/presentation/stores/counter/state.dart';

class CounterGetXController extends GetxController {
  // noe the type here - it is not counterget x state, but isntead it is is observable on it
  final Rx<CounterGextState> counterState = (CounterGextState(count: 0)).obs;

  void increment() {
    counterState.value.count++;
    update();
  }
}
