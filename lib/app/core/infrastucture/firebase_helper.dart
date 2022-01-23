import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/error/authentication_error.dart';
import 'package:trail/app/modules/sign_in/domain/repository/sign_in_repository.dart';

// Firebase helper
extension FirebaseX on FirebaseFirestore {
  // User Collection
  // var x="";
  CollectionReference get userCollection => collection("users");
  // Products Collection
  CollectionReference get productsCollection => collection("products");
  // Products uuid
  // String get productUuid => collection("products").doc().id;
  //  String uuid({required String collectionPath}) {
  //    return collection(collectionPath).doc().id;
  //  }
  /// Product Document generate 
  /// [productCollection]NDA[uuid]
  //  DocumentReference<Map<String, dynamic>> get productDocument => doc("${productsCollection.path}/$productUuid");
  // User Document
  Future<DocumentReference<Object?>> get userDocument async {
    return FirebaseFirestore.instance.userCollection.doc(await userID);
  }

  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws NotAuthenticatedError.
  Future<String?> get userID async {
    return  Get.find<FirebaseAuth>().currentUser?.uid;
  }
}
