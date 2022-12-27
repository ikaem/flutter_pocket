import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "auth_status_cubit_state.dart";
part "auth_status_cubit.freezed.dart";

class AuthStatusCubit extends Cubit<AuthStatusState> {
  AuthStatusCubit({
    required this.authUseCases,
  }) : super(const AuthStatusInitialState()) {
    _handleAuthStatus();
  }

  final AuthUseCases authUseCases;

  // TODO i am not sure about this - can i access this from the outside?
  Auth? auth;

  void _handleAuthStatus() {
    // TODO not sure if this works
    authUseCases.observeAuth().listen((event) {
      final Auth? currentAuth = auth = event;

      if (currentAuth == null) {
        emit(const AuthStatusLoggedOutState());
        return;
      }

      emit(AuthStatusLoggedInState(currentAuth));
    });
  }
}
