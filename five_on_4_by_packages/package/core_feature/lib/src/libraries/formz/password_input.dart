import 'package:formz/formz.dart';

import "package:core_feature/src/libraries/formz/utils/utils.dart";

class PasswordInput extends FormzInput<String, PasswordValidationError> {
  const PasswordInput.unvalidated([
    String value = "",
    // TODO i guess pure is to make sure that it was not touched
  ]) : super.pure(value);

  const PasswordInput.validate([
    String value = "",
  ]) : super.dirty(value);

  // ok, now the important part

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) return PasswordValidationError.empty;

    if (value.length < 5 || value.length > 120) {
      return PasswordValidationError.invalid;
    }

    return null;
  }
}
