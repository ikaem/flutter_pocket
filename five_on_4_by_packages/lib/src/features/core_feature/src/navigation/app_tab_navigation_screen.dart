import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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

    return Scaffold(
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
        tabs: [
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
