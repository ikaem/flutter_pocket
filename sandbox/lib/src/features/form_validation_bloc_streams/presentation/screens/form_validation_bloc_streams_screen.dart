import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/src/features/form_validation_bloc_streams/presentation/cubits/login/cubit.dart';

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
    return Container();
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
      children: const [
        Text("Login"),
        SizedBox(
          height: 32,
        ),
        StreamBuilder(
          builder: builder,
        ),
        StreamBuilder(
          builder: builder,
        ),
      ],
    );
  }

  Widget _userNameStreamBuilder<String>(
      BuildContext context, AsyncSnapshot<String> snapshot) {
    final bool isError = snapshot.hasError;
    final String? data = snapshot.data;

    return Text;
  }
}
