// TODO move this elsewhere - this is a type now

import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';

class LoginStateInputs {
  LoginStateInputs({
    required this.emailInput,
    required this.passwordInput,
    required this.isValid,
  });

  final EmailInput emailInput;
  final PasswordInput passwordInput;
  final bool isValid;
}
