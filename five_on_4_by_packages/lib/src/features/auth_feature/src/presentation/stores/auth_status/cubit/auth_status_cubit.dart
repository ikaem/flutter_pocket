import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "auth_status_cubit_state.dart";
part "auth_status_cubit.freezed.dart";

class AuthStatusCubit extends Cubit<AuthStatusState> {
  AuthStatusCubit({
    required this.authDBApiRepository,
  });

  final AuthDBApiRepository authDBApiRepository;

// TODO this does not necessary observe data - it can always just fetch data

}
