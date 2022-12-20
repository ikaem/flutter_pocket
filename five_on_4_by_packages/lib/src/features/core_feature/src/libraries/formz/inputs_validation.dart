import 'package:formz/formz.dart';

class InputsValidation {
  bool checkAreInputsValid({
    required List<FormzInput> inputs,
  }) {
    final bool isValid = Formz.validate(inputs).isValid;
    return isValid;
  }
}
