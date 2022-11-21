import 'package:bloc_arch_kodeco/src/presentation/stores/bloc/bloc.dart';
import 'package:flutter/src/widgets/framework.dart';

// note that t actually need to be bloc here
class BlocProvider<T extends Bloc> extends StatefulWidget {
  const BlocProvider({
    super.key,
    required this.child,
    required this.bloc,
  });

// note that this is T now
  final T bloc;
  final Widget child;

  // this is a function that will allow us to get this actual bloc, but as a static version
  static T of<T extends Bloc>(BuildContext context) {
    final BlocProvider<T> provider = context.findAncestorWidgetOfExactType()!;

    return provider.bloc;
  }

  @override
  State<BlocProvider> createState() => _BlocProviderState();
}

class _BlocProviderState extends State<BlocProvider> {
  @override
  void dispose() {
    super.dispose();
    widget.bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
