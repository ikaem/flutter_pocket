// TODO probably all use cases in all features should be in the domain

import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_api_dto/api_dto.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_db_api_dto/db_api_dto.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';

class AuthUseCases {
  const AuthUseCases({
    // TODO possibly could have only accept a repository - and repository juggles data sources local and remote
    required this.authApiRepository,
    required this.authDBApiRepository,
    required this.inputsValidation,
  });

  final AuthApiRepository authApiRepository;
  final AuthDBApiRepository authDBApiRepository;
  final InputsValidation inputsValidation;

// TODO ould this be a getter instead
  Stream<Auth?> observeAuth() {
    // TODO it is silly that this actually transforms data - repository should probably handle transformation
    final Stream<Auth?> stream = authDBApiRepository.observeAuth().map((event) {
      if (event == null) return null;

      return Auth.fromDbApiDTO(event);
    });

    return stream;
  }

  // TODO test
  Future<Auth> login({
    // TODO probably should have a type for this
    required String email,
    required String password,
  }) async {
    final AuthApiDTO dto = await authApiRepository.login(
      email: email,
      password: password,
    );

    final Auth auth = Auth.fromApiDTO(dto);

    final AuthDbApiDTO authDbApiDTO = AuthDbApiDTO.fromAuth(auth);

// TODO now the data is saved in the repository
    await authDBApiRepository.login(authDbApiDTO);

    return auth;
  }

  // TODO test
  Future<void> logout() async {
    // TODO this repo should be handling both local and remoterepositories
    await authApiRepository.logout();
    await authDBApiRepository.logout();
  }

// TODO for this case, it would be greate to have multiple use cases - to put all use cases stuff here
  LoginStateInputs validateLoginInputs(
      {required String email, required String password}) {
    final EmailInput emailInput = EmailInput.validated(
      email,
    );
    final PasswordInput passwordInput = PasswordInput.validated(
      password,
    );

    final bool isFormValid = inputsValidation.checkAreInputsValid(inputs: [
      emailInput,
      passwordInput,
    ]);

    final LoginStateInputs validStateInputs = LoginStateInputs(
      emailInput: emailInput,
      passwordInput: passwordInput,
      isValid: isFormValid,
    );

    return validStateInputs;
  }
}
