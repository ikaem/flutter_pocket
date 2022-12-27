import "package:equatable/equatable.dart";
import 'package:five_on_4_by_packages/src/features/auth_feature/src/presentation/stores/utils/enums/enums.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';

// TODO for now not using freezed here - just testing

// TODO use freezed later

class LogoutCubitState extends Equatable {
  const LogoutCubitState({
    this.submissionStatus = SubmissionStatus.initial,
  });

  final SubmissionStatus? submissionStatus;

  LogoutCubitState copyWith({
    EmailInput? email,
    PasswordInput? password,
    SubmissionStatus? submissionStatus,
  }) {
    return LogoutCubitState(
      submissionStatus: submissionStatus,
    );
  }

  @override
  List<Object?> get props => [
        submissionStatus,
      ];
}
