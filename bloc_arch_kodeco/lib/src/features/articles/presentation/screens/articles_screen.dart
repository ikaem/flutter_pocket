import 'package:bloc_arch_kodeco/src/features/articles/domain/models/article/article.dart';
import 'package:bloc_arch_kodeco/src/features/articles/presentation/stores/bloc/articles/articles_bloc.dart';
import 'package:bloc_arch_kodeco/src/features/articles/presentation/widgets/articles_list.dart';
import 'package:bloc_arch_kodeco/src/presentation/widgets/bloc_provider/bloc_provider.dart';
import 'package:flutter/material.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ArticlesBloc>(context);

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

                  bloc.searchQuery.add(value);
                },
              ),
            ),
            StreamBuilder<List<Article>?>(
              stream: bloc.articlesStream,
              builder: (context, snapshot) {
                //

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.hasError) {
                  return const Center(
                    child: Text("Something went wrong"),
                  );
                }

                final data = snapshot.data;

                if (data == null) {
                  return const Center(
                    child: Text("No data has been found"),
                  );
                }

                return Expanded(
                  child: ArticlesList(
                    articles: data,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
