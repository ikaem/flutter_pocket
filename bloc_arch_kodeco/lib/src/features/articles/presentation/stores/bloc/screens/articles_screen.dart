import 'package:bloc_arch_kodeco/src/features/articles/presentation/widgets/articles_list.dart';
import 'package:flutter/material.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Articles"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Search...",
                ),
                onChanged: (value) {
                  // something
                },
              ),
            ),
            const Expanded(
              child: ArticlesList(
                articles: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
