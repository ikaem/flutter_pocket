import 'package:auth_feature/src/presentation/stores/utils/utils.dart';
import "package:equatable/equatable.dart";

import "package:core_feature/core_feature.dart";

// TODO for now not using freezed here - just testing

// TODO use freezed later

class LoginCubitState extends Equatable {
  const LoginCubitState({
    this.email = const EmailInput.unvalidated(),
    this.password = const PasswordInput.unvalidated(),
    this.submissionStatus,
  });

  final EmailInput email;
  final PasswordInput password;
  final SubmissionStatus? submissionStatus;

  LoginCubitState copyWith({
    EmailInput? email,
    PasswordInput? password,
    SubmissionStatus? submissionStatus,
  }) {
    return LoginCubitState(
      email: email ?? this.email,
      password: password ?? this.password,
      submissionStatus: submissionStatus,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        submissionStatus,
      ];
}
