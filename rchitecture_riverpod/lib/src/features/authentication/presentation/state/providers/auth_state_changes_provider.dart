// here, we actually have to get the provider of auth repsoitroy
// this is so we can return its stream - the stream is in auth state changes thing

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/authentication/data/repositories/auth_repository.dart';
import 'package:rchitecture_riverpod/src/features/authentication/domain/models/app_user.dart';
import 'package:rchitecture_riverpod/src/features/authentication/presentation/state/providers/auth_repository_provider.dart';

// note that we haven't make a controller here - controller could potentually replace this - maaaaybe?
final authStateChangesProvider = StreamProvider.autoDispose<AppUser?>((ref) {
// get the auth repo
  final AuthRepository authRepository = ref.watch(authRepositoryProvider);

  // return stream from that auth repo

  return authRepository.authStateChanges();
});
