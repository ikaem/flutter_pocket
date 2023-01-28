import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/src/features/form_validation_bloc_streams/presentation/cubits/login/cubit.dart';
import 'package:sandbox/src/features/form_validation_bloc_streams/presentation/widgets/custom_plain_button.dart';
import 'package:sandbox/src/features/form_validation_bloc_streams/presentation/widgets/custom_text_field.dart';

// https://medium.flutterdevs.com/form-validation-with-stream-bloc-and-rxdart-4ffc5a1d0118

class FormValidationBlocStreamsScreen extends StatelessWidget {
  static const routeName = "form-validation-bloc-streams";

  const FormValidationBlocStreamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const _LoginView(),
    );
  }
}

class _LoginView extends StatefulWidget {
  const _LoginView();

  @override
  State<_LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  late final LoginCubit _loginCubit = context.read<LoginCubit>();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _loginCubit.clearStreams();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: _LoginForm(
              onPasswordChange: _loginCubit.updatePassword,
              onUserNameChange: _loginCubit.updateUserName,
              passwordStream: _loginCubit.passwordStream,
              userNameStream: _loginCubit.userNameStream,
            ),
          ),
          _LoginSubmit(
            validationStream: _loginCubit.validateForm,
          )
        ],
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    required this.userNameStream,
    required this.passwordStream,
    required this.onPasswordChange,
    required this.onUserNameChange,
  });

  final Stream<String> userNameStream;
  final Stream<String> passwordStream;
  final void Function(String) onPasswordChange;
  final void Function(String) onUserNameChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Login"),
        const SizedBox(
          height: 32,
        ),
        StreamBuilder(
          builder: _userNameStreamBuilder,
        ),
        StreamBuilder(
          builder: _passwordStreamBuilder,
        ),
      ],
    );
  }

  Widget _userNameStreamBuilder(
      BuildContext context, AsyncSnapshot<String> snapshot) {
    final bool isError = snapshot.hasError;
    final String? data = snapshot.data;

    return CustomTextField(
      onChange: onUserNameChange,
      labelText: "Username",
      textInputType: TextInputType.emailAddress,
      // isObscuredText: true,
    );
  }

  Widget _passwordStreamBuilder(
      BuildContext context, AsyncSnapshot<String> snapshot) {
    final bool isError = snapshot.hasError;
    final String? data = snapshot.data;

    return CustomTextField(
      onChange: onPasswordChange,
      labelText: "Password",
      textInputType: TextInputType.text,
      isObscuredText: true,
    );
  }
}

class _LoginSubmit extends StatelessWidget {
  const _LoginSubmit({
    required this.validationStream,
  });

  final Stream<bool> validationStream;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: validationStream,
      builder: _submitButtonStreamBuilder,
    );
  }

  Widget _submitButtonStreamBuilder(
      BuildContext context, AsyncSnapshot<bool> snapshot) {
    // todo TEST
    final bool isError = snapshot.hasError;

    final bool isValid = snapshot.data ?? false;

    return CustomPlainButton(
      isEnabled: isValid,
      // TODO if is not valid, means erorr was added to the sink
      btnColor: isValid ? Colors.red : Colors.grey,
      height: 67.0,
      onTap: isValid
          ? () {
              log("Just clicking login button");
            }
          : null,
      label: "Log in",
      lblColor: Colors.white,
    );
  }
}
