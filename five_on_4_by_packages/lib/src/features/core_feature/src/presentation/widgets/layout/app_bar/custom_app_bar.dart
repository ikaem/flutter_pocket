import 'package:five_on_4_by_packages/src/features/core_feature/src/presentation/widgets/layout/app_bar/custom_app_bar_popup_menu.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.screenActions = const [],
  });

  final String title;
  final List<Widget> screenActions;

  @override
  final Size preferredSize = const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        ...screenActions,
        const CustomAppBarPopupMenu(),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// class HomeScreenAppBar extends StatelessWidget with PreferredSizeWidget {
//   const HomeScreenAppBar({super.key});
//   // : prefferedSize = const Size.fromHeight(50.0);

//   @override
//   // Size get prefferedSize => const Size.fromHeight(50);
//   // TODO this is created by default by vsc
//   // Size get preferredSize => throw UnimplementedError();
//   // we can set it immeidately from height
//   // from height would give it defined height and infintie width
//   final Size preferredSize = const Size.fromHeight(50.0);
//   // or we can just declare the variable, and let the construtor handle it
//   // final Size prefferedSize;
//   // but, it seems the preferred size has to be a getter nowdays

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: const Text("Home screen app bar"),
//     );
//   }
// }
