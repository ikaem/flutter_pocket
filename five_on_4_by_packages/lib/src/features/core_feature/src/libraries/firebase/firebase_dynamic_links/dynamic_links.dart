import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

// TODO this is cool that we export it to - so we dont have to import from the library
export 'package:firebase_dynamic_links/firebase_dynamic_links.dart'
    show SocialMetaTagParameters;

class DynamicLinks {
  static const _domainUrlPrefix = "https://fiveon4bypackages.page.link";
  static const _iOsBundleId = "com.example.fiveO4PackagedFeatures";
  static const _androidBundleId = "com.example.five_o4_packaged_features";

  final FirebaseDynamicLinks _dynamicLinks = FirebaseDynamicLinks.instance;

  Future<String> generateDynamicLinkUrl({
    required String path,
    SocialMetaTagParameters? socialMetaTagParameters,
  }) async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      link: Uri.parse("$_domainUrlPrefix$path"),
      uriPrefix: _domainUrlPrefix,
      androidParameters: const AndroidParameters(packageName: _androidBundleId),
      iosParameters: const IOSParameters(bundleId: _iOsBundleId),
    );

    final shortLink = await _dynamicLinks.buildShortLink(parameters);
    return shortLink.shortUrl.toString();
  }

  Future<String?> getInitialDynamicLinkPath() async {
    // TODO so where does it get this initial link from actually
    final PendingDynamicLinkData? data = await _dynamicLinks.getInitialLink();
    final Uri? link = data?.link;

    return link?.path;
  }

  // TODO notew that this returns stream - so i guess we can setup listener on it
  Stream<String> onNewDynamicLinkPath() {
    final Stream<String> stream =
        _dynamicLinks.onLink.map((PendingDynamicLinkData event) {
      final link = event.link;
      final path = link.path;

      return path;
    });

    return stream;
  }
}
