import 'package:flutter/material.dart';
import 'package:sandbox/src/screens/animated_cross_fade_screen.dart';
import 'package:sandbox/src/screens/automatic_keep_alive_client_mixin_screen.dart';
import 'package:sandbox/src/screens/dart_custom_types.dart';
import 'package:sandbox/src/screens/enums_screen.dart';
import 'package:sandbox/src/screens/focus_node_screen.dart';
import 'package:sandbox/src/screens/home_screen.dart';
import 'package:sandbox/src/screens/inkwell_screen.dart';
import 'package:sandbox/src/screens/intrinsic_width_height.dart';
import 'package:sandbox/src/screens/keys_screen.dart';
import 'package:sandbox/src/screens/layout_builder_screen.dart';
import 'package:sandbox/src/screens/single_child_scroll_view_screen.dart';
import 'package:sandbox/src/screens/stack_screen.dart';
import 'package:sandbox/src/screens/text_span_screen.dart';
import 'package:sandbox/src/screens/topics_list_screen.dart';
import 'package:sandbox/src/screens/will_pop_scope_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case KeysScreen.routeName:
            return const KeysScreen();
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
          case SingleChildScrollViewScreen.routeName:
            return const SingleChildScrollViewScreen();
          case EnumsScreen.routeName:
            return const EnumsScreen();
          case FocusNodeScreen.routeName:
            return const FocusNodeScreen();
          case LayoutBuilderScreen.routeName:
            return const LayoutBuilderScreen();
          case StackScreen.routeName:
            return const StackScreen();
          case InkWellScreen.routeName:
            return const InkWellScreen();
          case ConstrainedBoxScreen.routeName:
            return const ConstrainedBoxScreen();

          case HomeScreen.routeName:
          default:
            return const HomeScreen();
        }
      },
    );
  }
}
