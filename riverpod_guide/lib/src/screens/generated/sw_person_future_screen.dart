import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/models/sw_person.dart';
import 'package:riverpod_guide/src/providers/generated/by_annotation/future_provider/provider.dart';

class SwPersonFutureScreen extends ConsumerWidget {
  static const routeName = "sw-person-future-screen";

  const SwPersonFutureScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
// this is because generator created asny value out of this
    final AsyncValue<SwPerson> personAsyncValue =
        ref.watch(swPersonGeneratedProvider(
      id: "1",
      // i cannot pass this here, becasue this will cause restart of the call to endpoint, because cancel token is used with dio
      // cancelToken: CancelToken(),
    ));

    return personAsyncValue.when(
      data: (data) {
        return Center(
          child: Text(
            data.name,
          ),
        );
      },
      error: (error, stackTrace) => const Center(
        child: Text("There was an error"),
      ),
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
