import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/domain/failures/server_failures/firestore_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/add_product_tdo.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/app/core/infrastucture/firebase_helper.dart';
import 'package:rxdart/rxdart.dart';

// Sign Out Repository Implementation
class HomeRepoFirebaseImplimentation extends IHomeRepository {
  final _firebaseAuth = Get.find<FirebaseAuth>();
  final _firebaseFirestore = Get.find<FirebaseFirestore>();
  DocumentSnapshot? _lastDoc;
  bool _hasMore = true;
  // TODO Move It
  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    // .signOut();
  }

  // first one
  @override
  Stream<Either<FireStoreServerFailures, List<Product>>>
      fetchProducts() async* {
    yield* _firebaseFirestore.productsCollection
        .orderBy('time', descending: true)
        .limit(15)
        .snapshots()
        .map(
      (snapshot) {
        return right<FireStoreServerFailures, List<Product>>(
            snapshot.docs.map((doc) {
          _lastDoc = doc;
          return ProductDTO.fromFireStore(doc).toDomain();
        }).toList());
      },
    ).onErrorReturnWith((error, stackTrace) => handlingError(error: error));
  }

  // Pagination
  @override
  Stream<Either<FireStoreServerFailures, List<Product>>>
      fetchProductsFromTheNextPage() async* {
    yield* _firebaseFirestore.productsCollection
        .orderBy('time', descending: true)
        .limit(15)
        .startAfterDocument(_lastDoc!)
        .snapshots()
        .map(
      (snapshot) {
        if (!_hasMore) {
          return left<FireStoreServerFailures, List<Product>>(
              const FireStoreServerFailures.noMoreData());
        }
        if (snapshot.docs.length < 6) {
          _hasMore = false;
        }
        return right<FireStoreServerFailures, List<Product>>(
            snapshot.docs.map((doc) {
          _lastDoc = doc;
          return ProductDTO.fromFireStore(doc).toDomain();
        }).toList());
      },
    ).onErrorReturnWith((error, stackTrace) => handlingError(error: error));
  }

  // Handling Error
  Either<FireStoreServerFailures, List<Product>> handlingError(
      {required Object error}) {
    if (error is FirebaseException && error.code == 'permission-denied') {
      return left(const FireStoreServerFailures.permissionsDenied());
    } else if (error is FirebaseException &&
        error.code != 'permission-denied') {
      return left(const FireStoreServerFailures.serverError());
    } else {
      return left(
        FireStoreServerFailures.unexpectedError(msg: "Error: $error"),
      );
    }
  }
}
