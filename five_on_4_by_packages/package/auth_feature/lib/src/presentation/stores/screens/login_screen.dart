import 'package:auth_feature/src/domain/use_cases/auth_use_cases/auth_use_cases.dart';
import 'package:auth_feature/src/presentation/stores/login/cubit/cubit.dart';
import 'package:auth_feature/src/presentation/stores/utils/enums/enums.dart';
import 'package:core_feature/core_feature.dart';
import 'package:flutter/material.dart';

import "package:flutter_bloc/flutter_bloc.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
// TODO getting use cases
    final AuthUseCases authUseCases = context.read<AuthUseCases>();

    return BlocProvider<LoginCubit>(
      create: (context) {
        return LoginCubit(authUseCases: authUseCases);
      },
      child: const LoginView(),
    );
  }
}

// View
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _initializeView();
  }

  @override
  void dispose() {
    super.dispose();
    _disposeView();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginCubitState>(
      listenWhen: _blocListenWhen,
      listener: _blocListener,
      builder: (context, state) {},
      // buildWhen: (previous, current) {

      // },
    );
  }

  void _initializeView() {
    final LoginCubit loginCubit = context.read<LoginCubit>();

    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus) loginCubit.onEmailUnfocused();
    });

    _passwordFocusNode.addListener(() {
      if (!_passwordFocusNode.hasFocus) loginCubit.onEmailUnfocused();
    });
  }

  void _disposeView() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
  }

  // TODO test
  bool _blocListenWhen(LoginCubitState oldState, LoginCubitState newState) {
    return oldState.submissionStatus != newState.submissionStatus;
  }

  void _blocListener(BuildContext context, LoginCubitState state) {
// TODO check errors here first
    if (state.submissionStatus == SubmissionStatus.genericError) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          _createSnackBar("Some generic error"),
        );
    }

    if (state.submissionStatus == SubmissionStatus.invalidCredentialsError) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          _createSnackBar("Invalid credentials error"),
        );
    }

    if (state.submissionStatus == SubmissionStatus.success) {
      // TODO this now should redirect to some protected routing - we passed the route

      ScaffoldMessenger.of(context)
        // TODO note the hide snackbar thing
        ..hideCurrentSnackBar()
        ..showSnackBar(
          _createSnackBar("Authenticated"),
        );

      return;
    }
  }

  Widget _blocBuilder(BuildContext context, LoginCubitState state) {
    // TODO note that is email validation error
    // final emailError = state.email.invalid ? state.email.error : null;

    // TODO lets see if this can work without that check if invalid
    final EmailValidationError? emailError = state.email.error;
    final String emailErrorText = emailError == EmailValidationError.empty
        ? "Cannot be empty"
        : "Invalid entry";
    final PasswordValidationError? passwordError = state.password.error;
    final String passwordErrorText =
        passwordError == PasswordValidationError.empty
            ? "Cannot be empty"
            : "Invalid entry";
    final bool isLoading = state.submissionStatus == SubmissionStatus.loading;

    // now get the cubit here - this is just to be able to submit
    final loginCubit = context.read<LoginCubit>();

    return Column(
      children: <Widget>[
        TextField(
          focusNode: _emailFocusNode,
          onChanged: loginCubit.onEmailChanged,
          textInputAction: TextInputAction.next,
          autocorrect: false,
          decoration: InputDecoration(
            suffix: const Icon(
              Icons.alternate_email,
            ),
            enabled: !isLoading,
            labelText: "Email",
            errorText: emailError == null ? null : emailErrorText,
          ),
        ),
        const SizedBox(
          height: Spacing.large,
        ),
        TextField(
          focusNode: _passwordFocusNode,
          onChanged: loginCubit.onPasswordChanged,
          obscureText: true,
          onEditingComplete: loginCubit.onSubmit,
          decoration: InputDecoration(
            suffix: const Icon(
              Icons.password,
            ),
            enabled: !isLoading,
            labelText: "Password",
            errorText: passwordError == null ? null : passwordErrorText,
          ),
        ),
        TextButton(
          onPressed: isLoading
              ? null
              : () {
                  // just go somewhere when forgot
                },
          child: const Text("Forgot password"),
        ),
      ],
    );
  }

  // TODO this could be a helper somewhere maybe
  SnackBar _createSnackBar(String content) {
    final SnackBar snackBar = SnackBar(
      content: Text(
        content,
      ),
    );

    return snackBar;
  }
}
