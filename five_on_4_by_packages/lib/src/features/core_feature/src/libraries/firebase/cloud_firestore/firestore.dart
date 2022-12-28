import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class FireStore {
  CollectionReference<Map<String, dynamic>> getCollection(
      String collectionPath) {
    final collection = FirebaseFirestore.instance.collection(collectionPath);

    return collection;
  }

  Future<List<Map<String, dynamic>>> filterCollectionItems(
    String collectionPath,
    String filterBy,
    String filterValue,
  ) async {
    final collection = await FirebaseFirestore.instance
        .collection(collectionPath)
        .where(filterBy, isEqualTo: filterValue)
        .get();

    final docs = collection.docs;

    log("this is docs $docs");
    log("this is filter by $filterBy");
    log("this is filter value $filterValue");

    final items = docs.map((e) {
      final data = e.data();

      data.addKey("id", e.id);

      return data;
    }).toList();

    // TODO how to get a list of maps here - not document snapshots

    // TODO this should also return finished data - so id needs to be added to each element

    return items;
  }

// TODO i might need to return just the collection to the api, and api class will then attach is filters and what not
  Future<List<Map<String, dynamic>>> getCollectionItems(
    String collectionPath,
  ) async {
// TODO test
    // final filteredCollection = await FirebaseFirestore.instance
    //     .collection(collectionPath)
    //     .where("tag", arrayContainsAny: ["friendly", "karlo"]).where("name",
    //         isEqualTo: "some match name");

    final collection =
        await FirebaseFirestore.instance.collection(collectionPath).get();

    final docs = collection.docs;

    final items = docs.map((e) {
      final data = e.data();

      data.addKey("id", e.id);

      return data;
    }).toList();

    // TODO how to get a list of maps here - not document snapshots

    // TODO this should also return finished data - so id needs to be added to each element

    return items;
  }

  Future<Map<String, dynamic>?> getCollectionItem(
    String collectionPath,
    String collectionItemPath,
  ) async {
    final collectionItem = await FirebaseFirestore.instance
        .collection(collectionPath)
        .doc(collectionItemPath)
        .get();

    final item = collectionItem.data();

    item?.addKey("id", collectionItem.id);

    return item;
  }

// TODO what is the time of collection map - it could potentually be only a map
  Future<void> postCollectionItem(
    String collectionPath,
    Map<String, dynamic> data,
  ) async {
    // TODO techically, we could get the result back
    await FirebaseFirestore.instance.collection(collectionPath).add(data);
  }
}

// TODO test here only - move this to helpers
extension MapExtensions on Map {
  void addKey(dynamic key, dynamic value) {
    this[key] = value;
  }
}
