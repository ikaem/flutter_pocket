import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/src/features/form_validation_bloc_streams/presentation/cubits/login/cubit.dart';

class BlocProviders extends StatelessWidget {
  const BlocProviders({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => LoginCubit())],
      child: child,
    );
  }
}
