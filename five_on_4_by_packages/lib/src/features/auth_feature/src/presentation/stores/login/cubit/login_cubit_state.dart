import "package:equatable/equatable.dart";
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/utils/enums/enums.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';

// TODO for now not using freezed here - just testing

// TODO use freezed later

class LoginCubitState extends Equatable {
  const LoginCubitState({
    this.email = const EmailInput.unvalidated(),
    this.password = const PasswordInput.unvalidated(),
    this.submissionStatus = SubmissionStatus.initial,
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
