import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:set_state/src/features/getx/presentation/stores/counter/controller.dart';

class GetXCounterScreen extends StatelessWidget {
  const GetXCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterGetXController counterGetXController =
        Get.find<CounterGetXController>();

    return GetBuilder<CounterGetXController>(
      builder: (controller) => Column(
        children: [
          Text("state: ${controller.counterState.value.count}"),
          const SizedBox(
            height: 42,
          ),
          TextButton(
            onPressed: () => counterGetXController.increment(),
            child: const Text("Increment"),
          ),
        ],
      ),
    );
  }
}
