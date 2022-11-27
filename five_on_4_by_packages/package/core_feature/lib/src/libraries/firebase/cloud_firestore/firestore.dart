import 'package:cloud_firestore/cloud_firestore.dart';

class FireStore {
  getCollectionItems(String collectionPath) async {
    final collection =
        await FirebaseFirestore.instance.collection(collectionPath).get();

    final items = collection.docs;

    return items;
  }

  getCollectionItem(
    String collectionPath,
    String collectionItemPath,
  ) async {
    final collectionItem = await FirebaseFirestore.instance
        .collection(collectionPath)
        .doc(collectionItemPath)
        .get();

    return collectionItem;
  }
}
