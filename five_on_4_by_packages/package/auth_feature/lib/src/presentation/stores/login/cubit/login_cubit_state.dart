import "package:equatable/equatable.dart";

import "package:core_feature/core_feature.dart";

// TODO for now not using freezed here - just testing

// TODO use freezed later

class LoginCubitState extends Equatable {
  const LoginCubitState({
    this.email = const EmailInput.unvalidated(),
    this.password = const PasswordInput.validated(),
    this.submissionStatus,
  });

  final Email email;
  final Password password;
  final SubmissionStatus? submissionStatus;

  SignInState copyWith({
    Email? email,
    Password? password,
    SubmissionStatus? submissionStatus,
  }) {
    return SignInState(
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
