// TODO not sure if this bloc for login is what i need
// how would t be to have a bloc for auth in general?

import 'package:auth_feature/src/domain/use_cases/auth_use_cases/auth_use_cases.dart';
import 'package:auth_feature/src/presentation/stores/login/cubit/login_cubit_state.dart';
import 'package:core_feature/core_feature.dart';
import "package:flutter_bloc/flutter_bloc.dart";
export "login_cubit.dart";
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
}
