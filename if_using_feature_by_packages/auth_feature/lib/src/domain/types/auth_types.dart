// TODO move this elsewhere - this is a type now
import 'package:core_feature/core_feature.dart';

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
