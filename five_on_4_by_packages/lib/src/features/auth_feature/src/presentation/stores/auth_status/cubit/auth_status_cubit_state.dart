part of "auth_status_cubit.dart";

@freezed
// TODO not even sure if i will be using events
// TODO standardize all states and cubits and bloc names
class AuthStatusState with _$AuthStatusState {
  // TODO how to make sure we know we have user in the state of this cubit?
  const factory AuthStatusState.initial() = AuthStatusInitialState;
  const factory AuthStatusState.loggedIn(
    Auth auth,
  ) = AuthStatusLoggedInState;
  const factory AuthStatusState.loggedOut() = AuthStatusLoggedOutState;
}
