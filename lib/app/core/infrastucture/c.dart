import 'package:cloud_firestore/cloud_firestore.dart';

extension DocumentReferenceX on CollectionReference{
  // User Document
  DocumentReference<Object?> get userDocument =>doc("users");
  // Products Document
  DocumentReference<Object?> get productsCollection => doc("products");
}
