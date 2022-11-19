// i have a feeling this should be in its own, screnes folder
// that way we could have multiple folders

import 'package:architecture_bloc/src/presentation/widgets/home_screen_app_bar.dart';
import 'package:architecture_bloc/src/presentation/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: HomeScreenAppBar(),
        body: HomeScreenBody(),
      ),
    );
  }
}
