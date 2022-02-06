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
import 'package:trail/core/logger_mixin.dart';
import 'package:trail/core/print_logger.dart';

// Sign Out Repository Implementation
class HomeRepoFirebaseImplimentation extends IHomeRepository {
  final _firebaseAuth = Get.find<FirebaseAuth>();
  final _firebaseFirestore = Get.find<FirebaseFirestore>();
  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Stream<Either<FireStoreServerFailures, List<Product>>> //List<Product>>>
      fetchProducts() async* {
    CollectionReference<Object?> _productsCollection =
        _firebaseFirestore.productsCollection;
    yield* _productsCollection
        .orderBy('time', descending: true)
        .snapshots()
        .map(
      (snapshot) {
        return right<FireStoreServerFailures, List<Product>>(snapshot.docs
            .map((doc) => ProductDTO.fromFireStore(doc).toDomain())
            .toList());
      },
    ).onErrorReturnWith((error, stackTrace) {
      if (error is FirebaseException) {
        // TODO make it better
        return left(FireStoreServerFailures.permissionsDenied(msg: "$error"));
      } else {
        // coloredPrint(msg: "Error ${error}");
        return left(
          FireStoreServerFailures.unexpectedError(msg: "Error $error"),
        );
      }
    });
  }
}
