import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

// Firebase helper
extension FirebaseX on FirebaseFirestore {
  // User Collection
  // var x="";
  CollectionReference get userCollection => collection("users");
  // Products Collection
  CollectionReference get productsCollection => collection("products");
  // Products uuid
  /// Product Document generate 
  /// [productCollection]NDA[uuid]
  String get UUID => productsCollection.doc().id;
  /// User Document
  Future<DocumentReference<Object?>> get userDocument async {
    return FirebaseFirestore.instance.userCollection.doc(await userID);
  }

  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws NotAuthenticatedError.
  Future<String?> get userID async {
    return  Get.find<FirebaseAuth>().currentUser?.uid;
  }
}
