import 'package:flutter/material.dart' hide Route;
import 'package:sandbox/src/screens/automatic_keep_alive_client_mixin_screen.dart';
import 'package:sandbox/src/screens/topics_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  static const routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with RestorationMixin {
  final RestorableInt _index = RestorableInt(0);

  final PageController pageController = PageController();

  @override
  // this is resoration bucket id for this page - we are restoring only index of the naigation bar
  String get restorationId => "home_page_bottom_navigation";

  @override
  // this is use registreing _index to be saved on every change, and setting to be restored every time the app is restored
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_index, "bottom_navigation_index");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topics'),
        actions: const [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index.value,
        onTap: (i) {
          // setState(() {
          //   _index.value = i;
          // });

          pageController.jumpToPage(i);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Topics List",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch),
            label: "Kept Alive counter",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_rounded),
            label: "Option 3",
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (int value) {
          setState(() {
            _index.value = value;
          });
        },
        children: tabbedScreens,
      ),
    );
  }
}

const List<Widget> tabbedScreens = [
  TopicsListScreen(),
  AutomaticKeepAliveClientMixinScreen(),
  Text("Just test")
];
