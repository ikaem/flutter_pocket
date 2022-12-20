// TODO not sure if this bloc for login is what i need
// how would t be to have a bloc for auth in general?

import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/login/cubit/cubit.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/utils/enums/enums.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/utils/exceptions/auth_exceptions.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import "package:flutter_bloc/flutter_bloc.dart";
export "login_cubit_state.dart";

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit({
    required this.authUseCases,

    // TODO note that this state is the only state we have here
  }) : super(const LoginCubitState());

  final AuthUseCases authUseCases;

  // events
  // TODO ok, so we get new value
  void onEmailChanged(String newValue) {
    // get previous state
    final previousState = state;
    final previousStateEmail = previousState.email;

    // checking if should validate previous email state
    // state here is an object that has fields on it, based on how we created it with formz
    final shouldValidatePreviousStateEmail = previousStateEmail.invalid;

// now, if previous email should be validated, we will create a validated email state
// and if previous email should not be validated - means if it is invalid - we should created unvalidated state - i dont get this
    final newStateEmail = shouldValidatePreviousStateEmail
        ? EmailInput.validated(
            newValue,
          )
        : EmailInput.unvalidated(
            newValue,
          );

    // now we create new state from this
    final newState = state.copyWith(
      email: newStateEmail,
    );

    // and we emit new state

    emit(newState);
  }

// this is where we actualy validate
  void onEmailUnfocused() {
    final previousState = state;
    final previousStateEmail = previousState.email;
    // TODO note that we get value of email here
    final previousStateEmailValue = previousStateEmail.value;

// we are validating currently what is in the state - we just call it previous
    final newStateEmail = EmailInput.validated(previousStateEmailValue);
    final newState = previousState.copyWith(
      email: newStateEmail,
    );

    emit(newState);
  }

  void onPasswordChanged(String newValue) {
    final previousState = state;
    final previousStatePassword = previousState.password;

    final bool shouldValidate = previousStatePassword.invalid;

    if (shouldValidate) {
      // we are now validated with this call
      final newStatePassword = PasswordInput.validated(newValue);

      final newState = previousState.copyWith(password: newStatePassword);
      // note that we never actually set state - we just emit it - that is probably enough - i guess it sets it into state, and then ui will react to chis new change
      emit(newState);

      return;
    }

// here we dont need to validate, because it is validated - but at this point, we still have not validated it
    final newStatePassword = PasswordInput.unvalidated(newValue);
    final newState = previousState.copyWith(password: newStatePassword);

    emit(newState);
  }

  void onPasswordUnfocused() {
    final previousState = state;
    final previousStatePassword = previousState.password;
    final previousStatePasswordValue = previousStatePassword.value;

    // now we validate current value, no matter what
    final newPasswordState =
        // validated constrorcutor actually forces validation - so it should be called validate -. but it is a constructor, so we call it validated
        PasswordInput.validated(previousStatePasswordValue);

    final newState = previousState.copyWith(password: newPasswordState);

    emit(newState);
  }

  void onSubmit() async {
    // TODO vlaidated validtes it
    // TODO i would like to validate this somewhere else as well
    // TODO would it be possible to validate login stuff in use cases too
    // final EmailInput emailInput = EmailInput.validated(
    //   state.email.value,
    // );
    // final PasswordInput passwordInput = PasswordInput.validated(
    //   state.password.value,
    // );

    // final bool isFormValid = inputsValidation.checkAreInputsValid(inputs: [
    //   emailInput,
    //   passwordInput,
    // ]);

    final LoginStateInputs loginStateInputs = authUseCases.validateLoginInputs(
      email: state.email.value,
      password: state.password.value,
    );

    // why does he emit new state now - for loading purposes?
    if (!loginStateInputs.isValid) {
      final newState = state.copyWith(
        email: loginStateInputs.emailInput,
        password: loginStateInputs.passwordInput,
        submissionStatus: null,
      );

      emit(newState);

      return;
    }

    // now we are valid

    try {
      final newState = state.copyWith(
        email: loginStateInputs.emailInput,
        password: loginStateInputs.passwordInput,
        submissionStatus: SubmissionStatus.loading,
      );

      emit(newState);

      // TODO test - not sure if we need this auth thing
      final Auth auth = await authUseCases.login(
        email: loginStateInputs.emailInput.value,
        password: loginStateInputs.passwordInput.value,
      );

      final successState =
          state.copyWith(submissionStatus: SubmissionStatus.success);

// NOTE THAT we always emit same state type
// but we have different fields
      emit(successState);
    } catch (e) {
      final SubmissionStatus exceptionSubmissionStatus =
          e is InvalidCredentialsException
              ? SubmissionStatus.invalidCredentialsError
              : SubmissionStatus.genericError;

      final exceptionState = state.copyWith(
        submissionStatus: exceptionSubmissionStatus,
      );

      emit(exceptionState);

      // we are now good
    }
  }
}
