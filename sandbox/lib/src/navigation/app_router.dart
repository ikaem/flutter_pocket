import 'package:flutter/material.dart';
import 'package:sandbox/src/screens/animated_cross_fade_screen.dart';
import 'package:sandbox/src/screens/automatic_keep_alive_client_mixin_screen.dart';
import 'package:sandbox/src/screens/home_screen.dart';
import 'package:sandbox/src/screens/intrinsic_width_height.dart';
import 'package:sandbox/src/screens/text_span_screen.dart';
import 'package:sandbox/src/screens/topics_list_screen.dart';
import 'package:sandbox/src/screens/will_pop_scope_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case AnimatedCrossFadeScreen.routeName:
            return const AnimatedCrossFadeScreen();
          case IntrinsicWidthHeightScreen.routeName:
            return const IntrinsicWidthHeightScreen();
          case WillPopScopeScreen.routeName:
            return const WillPopScopeScreen();
          case TopicsListScreen.routeName:
            return const TopicsListScreen();
          case TextSpanScreen.routeName:
            return TextSpanScreen();
          case AutomaticKeepAliveClientMixinScreen.routeName:
            return const AutomaticKeepAliveClientMixinScreen();
          case HomeScreen.routeName:
          default:
            return const HomeScreen();
        }
      },
    );
  }
}
