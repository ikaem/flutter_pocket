import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/authentication/data/repositories/auth_repository.dart';
import 'package:rchitecture_riverpod/src/features/authentication/data/repositories/auth_repository_fake/auth_repository_fake.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
// get the repositroy
  final AuthRepository authRepository = AuthRepositoryFake();

  // make sure the repository is closed on providrr dispose too - in this case, we are actually closing the in memory store - tx observer thing

  ref.onDispose(() => authRepository.dispose());

  // and then just return the repository

  return authRepository;
});
