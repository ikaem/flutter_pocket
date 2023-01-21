import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/repositories/auth_repository/repository.dart';
import 'package:rxdart/subjects.dart';

class AuthAppRepository implements AuthRepository {
  AuthAppRepository({
    required this.authRemoteApi,
    required this.authKeyStoreApi,
  });

  final AuthRemoteApi authRemoteApi;
  final AuthKeyStoreApi authKeyStoreApi;

  final BehaviorSubject<Auth?> _authSubject = BehaviorSubject();

  @override
  Stream<Auth?> get observeAuth => _authSubject.stream;

  @override
  Future<Auth?> getAuth() async {
    final AuthKeyStoreDTO? dto = await authKeyStoreApi.getAuth();

    if (dto == null) return null;

    final Auth auth = _generateAuthFromKeyStoreDTO(dto);

    return auth;
  }

  @override
  Future<void> login(LoginArgsValue args) async {
    // login

    final AuthApiDTO authRemoteDTO = await authRemoteApi.login(
      email: args.email,
      password: args.password,
    );

    await authKeyStoreApi.upsertAuth(
      id: authRemoteDTO.id,
      name: authRemoteDTO.name,
      token: authRemoteDTO.token,
    );

    // now we add to the subhject

    final Auth auth = _generateAuthFromRemoteDTO(authRemoteDTO);

// TODO we are actually adding an event here
    _authSubject.add(auth);
  }

  Auth _generateAuthFromRemoteDTO(AuthApiDTO dto) {
    return Auth.fromApiDTO(dto);
  }

  Auth _generateAuthFromKeyStoreDTO(AuthKeyStoreDTO dto) {
    return Auth.fromKeyStoreDTO(dto);
  }
}
