import 'package:five_on_4_by_packages/src/features/core_feature/src/domain/enums/theme_mode_preference.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/presentation/cubits/theme_mode/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routemaster/routemaster.dart';

class AppTabNavigationScreen extends StatelessWidget {
  const AppTabNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final TabPageState tabState = TabPage.of(context);

    // return Scaffold(
    //   bottomNavigationBar: TabBar(
    //     controller: tabState.controller,
    //     tabs: [
    //       Tab(
    //         icon: Icon(Icons.people),
    //         text: "Players",
    //       ),
    //       Tab(
    //         icon: Icon(Icons.watch),
    //         text: "Matches",
    //       ),
    //     ],
    //   ),
    // );

    final tabPage = TabPage.of(context);
    final ThemeModeCubit themeModeCubit = context.read<ThemeModeCubit>();

    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              TextButton(
                onPressed: () async {
                  await themeModeCubit
                      .changeThemeMode(ThemeModePreference.useLight);
                },
                child: const Text(
                  "Light",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  await themeModeCubit
                      .changeThemeMode(ThemeModePreference.useDark);
                },
                child: const Text(
                  "Dark",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  await themeModeCubit
                      .changeThemeMode(ThemeModePreference.useSystem);
                },
                child: const Text(
                  "System",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              )
            ],
          )
        ],
      ),
      // appBar: AppBar(
      //   bottom: TabBar(
      //     controller: tabPage.controller,
      //     tabs: [
      //       Tab(text: 'Feed'),
      //       Tab(text: 'Settings'),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: TabBar(
        controller: tabPage.controller,
        tabs: const [
          Tab(text: 'Teams'),
          Tab(text: 'Players'),
        ],
      ),
      body: TabBarView(
        controller: tabPage.controller,
        children: [
          for (final stack in tabPage.stacks) PageStackNavigator(stack: stack),
        ],
      ),
    );

    // cupertino

    // final tabState = CupertinoTabPage.of(context);

    // return CupertinoTabScaffold(
    //   controller: tabState.controller,
    //   tabBuilder: tabState.tabBuilder,
    //   tabBar: CupertinoTabBar(
    //     items: [
    //       BottomNavigationBarItem(
    //         icon: const Icon(
    //           Icons.format_quote,
    //         ),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: const Icon(
    //           Icons.person,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
