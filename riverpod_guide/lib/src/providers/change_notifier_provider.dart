import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/ui/controllers/auth_controller.dart';

final authControllerProvider = ChangeNotifierProvider<AuthController>((ref) {
  return AuthController();
});
