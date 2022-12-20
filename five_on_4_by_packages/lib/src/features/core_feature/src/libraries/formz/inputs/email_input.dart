import 'package:equatable/equatable.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/libraries/formz/utils/utils.dart';
import 'package:formz/formz.dart';

class EmailInput extends FormzInput<String, EmailValidationError>
    with EquatableMixin {
  const EmailInput.unvalidated([
    String value = "",
    // TODO i guess pure is to make sure that it was not touched
  ])  : isAlreadyRegistered = false,
        super.pure(value);

  const EmailInput.validated(
    String value, {
    this.isAlreadyRegistered = false,
  }) : super.dirty(value);

  final bool isAlreadyRegistered;

  @override
  EmailValidationError? validator(String value) {
    if (value.isEmpty) return EmailValidationError.empty;
    if (isAlreadyRegistered) return EmailValidationError.alreadyRegistered;
    if (!_emailRegex.hasMatch(value)) return EmailValidationError.invalid;

    return null;
  }

  @override
  List<Object?> get props => [
        value,
        pure,
        isAlreadyRegistered,
      ];

  // TODO maybe this should not live here - maybe it is a constant - or, maybe it should be limited to this only
  static final _emailRegex = RegExp(
    '^(([\\w-]+\\.)+[\\w-]+|([a-zA-Z]|[\\w-]{2,}))@((([0-1]?'
    '[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.'
    '([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])'
    ')|([a-zA-Z]+[\\w-]+\\.)+[a-zA-Z]{2,4})\$',
  );
}
