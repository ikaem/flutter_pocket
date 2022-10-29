import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloWorldProvider = Provider<String>(
  (ref) {
    return "Hello world";
  },
);
