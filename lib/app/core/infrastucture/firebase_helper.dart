import 'package:cloud_firestore/cloud_firestore.dart';

// Firebase helper
extension FirebaseX on FirebaseFirestore {
// Products Collection
  CollectionReference get productsCollection => collection("products");
  // Products uuid
  String get productUuid => FirebaseFirestore.instance.productsCollection.doc().id;

}
