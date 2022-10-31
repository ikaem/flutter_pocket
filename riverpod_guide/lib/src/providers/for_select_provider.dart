// this would normally be a future or stream, to fetch data from tremote
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/models/connection.dart';

final connectionProvider = StateProvider<Connection>((ref) {
  return Connection();
});
