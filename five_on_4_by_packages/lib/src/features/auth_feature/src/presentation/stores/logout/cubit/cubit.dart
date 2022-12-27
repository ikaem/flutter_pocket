// TODO not sure if this bloc for login is what i need
// how would t be to have a bloc for auth in general?

import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/logout/cubit/logout_cubit_state.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/utils/enums/enums.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/utils/exceptions/auth_exceptions.dart';

import "package:flutter_bloc/flutter_bloc.dart";
export 'logout_cubit_state.dart';

// TODO this is not exported well

// TODO question is where should this live now - where should it be nested - probably in app bar somewhere
class LogoutCubit extends Cubit<LogoutCubitState> {
  LogoutCubit({
    required this.authUseCases,

    // TODO note that this state is the only state we have here
  }) : super(const LogoutCubitState());

  final AuthUseCases authUseCases;

  Future<void> logout() async {
    // TODO this should emit loading somehow
    final loadingState =
        state.copyWith(submissionStatus: SubmissionStatus.loading);
    emit(loadingState);

    try {
      // TODO test - not sure if we need this auth thing
      await authUseCases.logout();

// TODO not sure about htis submission status being used both here and in the login hting
// TODO on the other thing, i like that we are reusing the state
// the only hting that is cnahnging is the submission stastus - and we can change it because i guess we are using equatable
      final successState =
          state.copyWith(submissionStatus: SubmissionStatus.success);

// NOTE THAT we always emit same state type
// but we have different fields
      emit(successState);
    } catch (e) {
      //
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
