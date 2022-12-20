import 'package:auth_feature/auth_feature.dart';
import "package:flutter_bloc/flutter_bloc.dart";

part "auth_status_cubit.dart";

class AuthStatusCubit extends Cubit<AuthStatusState> {
  AuthStatusCubit({
    required this.authDBApiRepository,
  });

  final AuthDBApiRepository authDBApiRepository;

// TODO this does not necessary observe data - it can always just fetch data

}
