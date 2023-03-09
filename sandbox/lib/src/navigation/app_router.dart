import 'package:flutter/material.dart';
import 'package:sandbox/src/features/animated_cross_fade_screen.dart';
import 'package:sandbox/src/features/automatic_keep_alive_client_mixin_screen.dart';
import 'package:sandbox/src/features/call_method_after_build_executes/presentation/screens/call_method_after_build_executes_screen.dart';
import 'package:sandbox/src/features/constrained_box_screen.dart';
import 'package:sandbox/src/features/dependecy_injection_get_it_injectable/presentation/screens/dependecy_injection_get_it_injectable_screen.dart';
import 'package:sandbox/src/features/enums_screen.dart';
import 'package:sandbox/src/features/fitted_box_screen.dart';
import 'package:sandbox/src/features/flutter_hooks/presentation/screens/flutter_hooks_screen.dart';
import 'package:sandbox/src/features/focus_node_screen.dart';
import 'package:sandbox/src/features/form_validation_bloc_streams/presentation/screens/form_validation_bloc_streams_screen.dart';
import 'package:sandbox/src/features/fractionally_sized_box_screen.dart';
import 'package:sandbox/src/features/home_screen.dart';
import 'package:sandbox/src/features/inkwell_screen.dart';
import 'package:sandbox/src/features/intrinsic_width_height.dart';
import 'package:sandbox/src/features/keys_screen.dart';
import 'package:sandbox/src/features/layout_builder_screen.dart';
import 'package:sandbox/src/features/limited_box_screen.dart';
import 'package:sandbox/src/features/more_rx_dart/presentation/screens/more_rx_dart.dart';
import 'package:sandbox/src/features/offstage_widget_screen.dart';
import 'package:sandbox/src/features/overlays/presentation/screens/overlays_screen.dart';
import 'package:sandbox/src/features/single_child_scroll_view_screen.dart';
import 'package:sandbox/src/features/stack_screen.dart';
import 'package:sandbox/src/features/streams_and_rx_dart/presentation/screens/streams_and_rx_dart_screen.dart';
import 'package:sandbox/src/features/text_span_screen.dart';
import 'package:sandbox/src/features/topics_list_screen.dart';
import 'package:sandbox/src/features/will_pop_scope_screen.dart';

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
          case FittedBoxScreen.routeName:
            return const FittedBoxScreen();
          case FractionallySizedBoxScreen.routeName:
            return const FractionallySizedBoxScreen();
          case LimitedBoxScreen.routeName:
            return const LimitedBoxScreen();
          case OffstageWidgetScreen.routeName:
            return const OffstageWidgetScreen();
          case FormValidationBlocStreamsScreen.routeName:
            return const FormValidationBlocStreamsScreen();
          case CallMethodAfterBuildExecutesScreen.routeName:
            return const CallMethodAfterBuildExecutesScreen();
          case StreamsAndRXDartScreen.routeName:
            return const StreamsAndRXDartScreen();
          case MoreRxDartScreen.routeName:
            return const MoreRxDartScreen();
          case DependecyInjectioGetItInjectableScreen.routeName:
            return const DependecyInjectioGetItInjectableScreen();
          case OverlaysScreen.routeName:
            return const OverlaysScreen();
          case FlutterHooksScreen.routeName:
            return const FlutterHooksScreen();

          case HomeScreen.routeName:
          default:
            return const HomeScreen();
        }
      },
    );
  }
}
