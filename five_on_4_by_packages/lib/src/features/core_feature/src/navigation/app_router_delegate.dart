// TODO probably good to have a class here for all of it

import 'package:five_on_4_by_packages/src/features/core_feature/src/navigation/app_paths.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'app_tab_navigation_screen.dart';

final RoutemasterDelegate appRouterDelegate = RoutemasterDelegate(
  routesBuilder: (BuildContext context) {
    return routeMap;
  },
);

// todo WE WILL USE THIS TO CREATE A MAP - AGAIN SOME FUNCTION of varaible in the class to be done in future
RouteMap routeMap = RouteMap(
  routes: buildRoutingTable(routerDelegate: appRouterDelegate),
  // routes: {
  //   "/": (route) => MaterialPage(
  //         child: Center(
  //           child: Text("Test root route"),
  //         ),
  //       )
  // },
);

// this is a function to build routing map - we will intefgrate it into a class later
Map<String, PageBuilder> buildRoutingTable({
  required RoutemasterDelegate routerDelegate,
}) {
  return {
    AppPaths.tabContainerPath: (route) {
      return TabPage(child: AppTabNavigationScreen(), paths: [
        AppPaths.playersPath,
        AppPaths.matchesPath,
      ]);
    },
  };
}
