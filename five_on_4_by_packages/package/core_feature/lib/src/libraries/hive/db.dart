// import 'package:core_feature/src/libraries/hive/db_box.dart';
// import 'package:hive/hive.dart';

// // TODO this should also have a single instance
// class DB {
//   DB() {
//     // TODO not sure if this what path should be here
//     // https: //blog.logrocket.com/handling-local-data-persistence-flutter-hive/
//     Hive.init("/");
//   }

//   Future getBox() async {
//     // TODO or create a separated db record for this too - probably better since we only need special data
//     final what = await Hive.openLazyBox<PlayerDTO>(DBBox.players);
//   }
// }

// TODO trying to make it as a class

import 'dart:io';

import 'package:core_feature/core_feature.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:players_feature/players_feature.dart';

class DB {
  // TODO test - not sure this should live here in future
  static const String kPlayersBox = "players";
  static const String kAuthBox = "auth";

  DB({
    required this.appLogger,
  });

  final AppLogger appLogger;

// TODO questionable if this should be static or not - should this all be instantiated and passed along as DI, or it should be static
  Future<void> initialize() async {
    // TODO questionable how to handle errors for this - look it up
    final Directory applicationDocumentsDirectory =
        await getApplicationDocumentsDirectory();

// TODO there was another method on flutter hive? should that be used isntead?
    Hive.init(applicationDocumentsDirectory.path);

// TODO this could eventually be running a loop, and registering all adapters in a list - so we would need to have a list of all adapters somewhere somehow
    Hive.registerAdapter(PlayerDbDTOAdapter());
    // TODO should register also auth db adapter

    // TODO later, we could be opening this lazily
    // TODO this should also be made more sophiistactdd - but do it later
    // TODO not sure if this should be done here - or maybe it should be done in each function
    await Hive.openBox<PlayerDbDTO>(kPlayersBox);
  }

  // TODO we should also be closing boxes too - and we should close it when the app closes - how to do that check it

  // TODO also checks what is with lazy open box thing

  Future<void> addBoxItem<T>({
    required String boxName,
    required T item,
    required String itemId,
  }) async {
    final Box<T> box = Hive.box<T>(boxName);
    // final int hiveId = await box.add(item);

    await box.put(itemId, item);
  }

  Future<void> addBoxItems<T>({
    required String boxName,
    required Map<String, T> items,
  }) async {
    final Box<T> box = Hive.box<T>(boxName);
    // final Iterable<int> hiveIds = await box.addAll(items);

    // TODO this should use put items too

// TODO this should probably not be done here - this function should already get a map - do it later, for now leave it
    // final Map<String, T> map = Map.fromIterable(
    //   items,
    //   key: (element) => element.id,
    // );

    await box.putAll(items);
    // ;

    // TODO issue - how to handle duplicates
  }

  Future<Iterable<T>> getBoxItems<T>({
    required String boxName,
  }) async {
    final Box<T> box = Hive.box<T>(boxName);

    final Iterable<T> items = box.values;

    return items;
  }

  Future<T> getBoxItem<T>({
    required String boxName,
    required Object itemId,
  }) async {
    final Box<T> box = Hive.box<T>(boxName);

// TODO not sure if this is ok
    final T? item = box.get(itemId);

    if (item == null) {
      throw DbFetchException(message: "Failed to fetch item from database");
    }

    // TODO if there is no data, should probably throw some error that thereis no data in the databse

    return item;
  }

  Stream<BoxEvent> observeBoxItem<T>({
    required String boxName,
    required Object itemId,
  }) {
    final Stream<BoxEvent> stream = Hive.box<T>(boxName).watch(
      key: itemId,
    );

    return stream;
  }
}

// TODO test
abstract class IdableItem {
  IdableItem({
    required this.id,
  });

  final String id;
}
