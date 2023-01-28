import 'package:sandbox/src/features/animated_cross_fade_screen.dart';
import 'package:sandbox/src/features/automatic_keep_alive_client_mixin_screen.dart';
import 'package:sandbox/src/features/call_method_after_build_executes/presentation/screens/call_method_after_build_executes_screen.dart';
import 'package:sandbox/src/features/constrained_box_screen.dart';
import 'package:sandbox/src/features/enums_screen.dart';
import 'package:sandbox/src/features/fitted_box_screen.dart';
import 'package:sandbox/src/features/focus_node_screen.dart';
import 'package:sandbox/src/features/form_validation_bloc_streams/presentation/screens/form_validation_bloc_streams_screen.dart';
import 'package:sandbox/src/features/fractionally_sized_box_screen.dart';
import 'package:sandbox/src/features/inkwell_screen.dart';
import 'package:sandbox/src/features/intrinsic_width_height.dart';
import 'package:sandbox/src/features/keys_screen.dart';
import 'package:sandbox/src/features/layout_builder_screen.dart';
import 'package:sandbox/src/features/limited_box_screen.dart';
import 'package:sandbox/src/features/offstage_widget_screen.dart';
import 'package:sandbox/src/features/single_child_scroll_view_screen.dart';
import 'package:sandbox/src/features/stack_screen.dart';
import 'package:sandbox/src/features/streams_and_rx_dart/presentation/screens/streams_and_rx_dart_screen.dart';
import 'package:sandbox/src/features/text_span_screen.dart';
import 'package:sandbox/src/features/topics_list_screen.dart';
import 'package:sandbox/src/features/will_pop_scope_screen.dart';

const routes = [
  Route(
    name: "ListView.builder",
    path: TopicsListScreen.routeName,
  ),
  Route(
    name: "TextSpan",
    path: TextSpanScreen.routeName,
  ),
  Route(
    name: "AutomaticKeepAliveClientMixin",
    path: AutomaticKeepAliveClientMixinScreen.routeName,
  ),
  Route(
    name: "WillPopScope",
    path: WillPopScopeScreen.routeName,
  ),
  Route(
    name: "IntrinsicWidthHeight",
    path: IntrinsicWidthHeightScreen.routeName,
  ),
  Route(
    name: "AnimatedCrossFade",
    path: AnimatedCrossFadeScreen.routeName,
  ),
  Route(
    name: "Keys",
    path: KeysScreen.routeName,
  ),
  Route(
    name: "SingleChildScrollView",
    path: SingleChildScrollViewScreen.routeName,
  ),
  Route(
    name: "Enums",
    path: EnumsScreen.routeName,
  ),
  Route(
    name: "FocusNode",
    path: FocusNodeScreen.routeName,
  ),
  Route(
    name: "LayoutBuilder",
    path: LayoutBuilderScreen.routeName,
  ),
  Route(
    name: "Stack",
    path: StackScreen.routeName,
  ),
  Route(
    name: "InkWell",
    path: InkWellScreen.routeName,
  ),
  Route(
    name: "ConstrainedBox",
    path: ConstrainedBoxScreen.routeName,
  ),
  Route(
    name: "FittedBox",
    path: FittedBoxScreen.routeName,
  ),
  Route(
    name: "FractionallySizedBox",
    path: FractionallySizedBoxScreen.routeName,
  ),
  Route(
    name: "LimitedBox",
    path: LimitedBoxScreen.routeName,
  ),
  Route(
    name: "OffstageWidget",
    path: OffstageWidgetScreen.routeName,
  ),
  Route(
    name: "Screen valition with bloc and streams",
    path: FormValidationBlocStreamsScreen.routeName,
  ),
  Route(
    name: "Call method after build executes",
    path: CallMethodAfterBuildExecutesScreen.routeName,
  ),
  Route(
    name: "Streams and RX Dart",
    path: StreamsAndRXDartScreen.routeName,
  ),
];

class Route {
  const Route({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;
}
