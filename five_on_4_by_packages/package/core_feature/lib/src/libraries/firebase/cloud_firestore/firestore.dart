import 'package:cloud_firestore/cloud_firestore.dart';

class FireStore {
  Future<List<Map<String, dynamic>>> getCollectionItems(
      String collectionPath) async {
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
}

// TODO test here only - move this to helpers
extension MapExtensions on Map {
  void addKey(dynamic key, dynamic value) {
    this[key] = value;
  }
}
