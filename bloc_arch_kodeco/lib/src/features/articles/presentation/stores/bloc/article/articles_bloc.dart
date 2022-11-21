import 'dart:async';

import 'package:bloc_arch_kodeco/src/features/articles/data/repositories/articles_repository.dart';
import 'package:bloc_arch_kodeco/src/features/articles/domain/models/article/article.dart';
import 'package:bloc_arch_kodeco/src/presentation/stores/bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

class ArticlesBloc implements Bloc {
  ArticlesBloc({
    required this.articlesRepository,
  }) {
    // this will await for each request because of async map - probably not best in this case
    // articlesStream = _searhQueryController.stream.asyncMap((searchQuery) {
    //   // note that the event is actualy a string - search query
    //   // and we also want to fetch list of artciles for this query - and return this

    //   log("this is search term: $searchQuery");

    //   final articles = articlesRepository.many(searchQuery);

    //   return articles;
    // });

    // TODO maybe bettersoltiion
    articlesStream = _searhQueryController.stream
        .startWith(null)
        .debounceTime(const Duration(milliseconds: 100))
        .switchMap(
          (searchQuery) =>
              articlesRepository.many(searchQuery).asStream().startWith(null),
        );
  }

  final ArticlesRepository articlesRepository;
  /* late hs to be, to be able to intiialize it in the cosntructors body  */
  late Stream<List<Article>?> articlesStream;

// ok, so this stream will hold strings?
  final _searhQueryController = StreamController<String?>();

  // and we are now returning sink of search query here
  Sink<String?> get searchQuery => _searhQueryController.sink;

  // and we also have to create variable for stream

  // and also dispose - just close the search query controller - the stream
  @override
  void dispose() {
    _searhQueryController.close();
  }
}
