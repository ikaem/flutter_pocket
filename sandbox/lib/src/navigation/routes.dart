import 'package:sandbox/src/screens/animated_cross_fade_screen.dart';
import 'package:sandbox/src/screens/automatic_keep_alive_client_mixin_screen.dart';
import 'package:sandbox/src/screens/enums_screen.dart';
import 'package:sandbox/src/screens/focus_node_screen.dart';
import 'package:sandbox/src/screens/intrinsic_width_height.dart';
import 'package:sandbox/src/screens/keys_screen.dart';
import 'package:sandbox/src/screens/layout_builder_screen.dart';
import 'package:sandbox/src/screens/single_child_scroll_view_screen.dart';
import 'package:sandbox/src/screens/stack_screen.dart';
import 'package:sandbox/src/screens/text_span_screen.dart';
import 'package:sandbox/src/screens/topics_list_screen.dart';
import 'package:sandbox/src/screens/will_pop_scope_screen.dart';

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
];

class Route {
  const Route({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;
}
