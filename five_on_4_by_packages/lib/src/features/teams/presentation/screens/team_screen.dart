import 'package:five_on_4_by_packages/src/features/core_feature/src/libraries/firebase/firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({
    super.key,
    required this.teamId,
  });

  final int teamId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
      ),
      body: Center(
          child: Text("This is Team screen - and this is the id --> $teamId")),
    );
  }

  // TODO normally, would not initialize it here
  String _generateTeamSharableLink() async {
    final DynamicLinks dynamicLinks = DynamicLinks();

    final path = 

    final String sharableLink = await dynamicLinks.generateDynamicLinkUrl(path: path);
  }
}


// TODO dynamic links domain
// fiveon4bypackages.page.link