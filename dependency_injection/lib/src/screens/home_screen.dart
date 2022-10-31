import 'package:dependency_injection/src/models/app_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.info,
  });

  final AppInfo info;

  @override
  Widget build(BuildContext context) {
    // final appInfo = InheritedInjection.of(context).appInfo;
    // final appInfo = locator<AppInfo>();
    final AppInfo appInfo = Provider.of<AppInfo>(context);

    return Center(
      child: Text(appInfo.appName),
    );
  }
}
