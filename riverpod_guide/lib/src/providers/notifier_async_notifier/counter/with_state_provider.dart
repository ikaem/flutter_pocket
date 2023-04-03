// this is old state provider
// i guess we jsut keep state here
// and then later in widget we will be able to incrmenet it
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterWithStateProvider = StateProvider((ref) => 0);
