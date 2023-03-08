import 'package:flutter/material.dart';

class CustomPopupRoute extends PopupRoute {
  CustomPopupRoute({
    required this.builder,
    super.settings,
  });

  final WidgetBuilder builder;

  @override
  Color? get barrierColor => Colors.black54.withAlpha(100);

  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => "customPopupRoute";

  @override
  Duration get transitionDuration => const Duration(milliseconds: 400);

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return builder(context);
  }

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: animation,
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}
