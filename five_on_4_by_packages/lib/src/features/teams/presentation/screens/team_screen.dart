import 'package:five_on_4_by_packages/src/features/core_feature/src/libraries/firebase/firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/navigation/app_paths.dart';
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
        actions: [
          IconButton(
              onPressed: _generateTeamSharableLink, icon: Icon(Icons.share))
        ],
      ),
      body: Center(
          child: Text("This is Team screen - and this is the id --> $teamId")),
    );
  }

  // TODO normally, would not initialize it here
  Future<String> _generateTeamSharableLink() async {
    final DynamicLinks dynamicLinks = DynamicLinks();

    final String path = AppPaths.teamPath(teamId: teamId.toString());
    final SocialMetaTagParameters socialMetaTagParameters =
        SocialMetaTagParameters(
            title: "Some match name here",
            description: "Again, some description here");

    try {
      final String sharableLink = await dynamicLinks.generateDynamicLinkUrl(
        path: path,
        socialMetaTagParameters: socialMetaTagParameters,
      );

      return sharableLink;
    } catch (e) {
      // TODO test
      final error = e;

      rethrow;
    }
  }
}


// TODO dynamic links domain
// fiveon4bypackages.page.link