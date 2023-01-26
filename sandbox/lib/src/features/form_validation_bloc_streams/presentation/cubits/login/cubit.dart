import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

part "cubit_state.dart";

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit() : super(LoginCubitStateInitial());

  // ok, so create two subjects  -w which are controlelrs it seems

  final BehaviorSubject<String> _userNameSubject = BehaviorSubject<String>();
  final BehaviorSubject<String> _passwordSubject = BehaviorSubject<String>();

  // and streams too
  Stream<String> get userNameStream => _userNameSubject.stream;
  Stream<String> get passwordStream => _passwordSubject.stream;

  void clearStreams() {
    updatePassword("");
    updateUserName("");
  }

  void updatePassword(String password) {
    if (password.length < 4) {
      // TODO note how cool is this  - we just emit error into the sink
      _passwordSubject.addError("Please enter at least 4 characters password");
      return;
    }

    _passwordSubject.sink.add(password);
    // _passwordSubject.add(password);
  }

  void updateUserName(String userName) {
    if (userName.length < 4) {
      // TODO note how cool is this  - we just emit error into the sink
      _passwordSubject.addError("Please enter at least 4 characters username");
      return;
    }

    _passwordSubject.sink.add(userName);
    // _passwordSubject.add(password);
  }

  // how to validate this?
  // we have access to both streams, so i guess we just call the function
  Stream<bool> get validateForm => Rx.combineLatest2(
        userNameStream,
        passwordStream,
        (a, b) => true,
      );
}
