import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/error/authentication_error.dart';
import 'package:trail/app/modules/sign_in/domain/repository/sign_in_repository.dart';

// Firebase helper
extension FirebaseX on FirebaseFirestore {
  // User Collection
  CollectionReference get userCollection => collection("users");
  // Products Collection
  CollectionReference get productsCollection => collection("products");
  // Products uuid
  String get productUuid => productsCollection.id;
  // User Document
  Future<DocumentReference> get userDocument async {
    return FirebaseFirestore.instance.userCollection.doc(await userID);
  }

  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws NotAuthenticatedError.
  Future<String> get userID async {
    return await Get.find<ISignInRepoitory>().getSignedInUserID().then(
          (value) => value.fold(
            () => throw AuthenticationError(),
            (a) => a,
          ),
        );
  }
}
