import 'package:flutter/material.dart';
import 'package:keys_todo/src/features/news/data/repository/news_repository.dart';
import 'package:keys_todo/src/features/news/data/source/news_source.dart';
import 'package:keys_todo/src/features/todos/data/repository/todos_repository.dart';
import 'package:keys_todo/src/features/todos/data/source/todos_source.dart';
import 'package:keys_todo/src/ui/screens/news_screen.dart';
import 'package:keys_todo/src/ui/screens/todos_screen.dart';
import 'package:keys_todo/src/ui/widgets/layout/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;

  // we are creating a bucket to preserve scroll state
  final PageStorageBucket bucket = PageStorageBucket();

  final pages = <Widget>[
    TodosScreen(
      key: const PageStorageKey("todos"),
      todosRepository: TodosRepository(
        localDataSource: TodosLocalDataSource(),
      ),
    ),
    NewsScreen(
      key: const PageStorageKey("news"),
      newsRepository: NewsRepository(
        remoteDataSource: NewsRemoteSource(),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: pages[currentTabIndex],
      ),
      appBar: AppBar(
        title: Text(
          "Keys Todo",
          style: textTheme.headline6!.copyWith(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentTabIndex: currentTabIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.today_outlined),
            label: "Todos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: "News",
          ),
        ],
        onChangeTab: onChangeTab,
      ),
    );
  }

  void onChangeTab(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }
}
