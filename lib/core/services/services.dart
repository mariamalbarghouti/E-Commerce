import 'package:cloud_firestore/cloud_firestore.dart';
export 'package:cloud_firestore/cloud_firestore.dart';

// extension FirestoreX on FirebaseFirestore {
//   /// The user must be already authenticated when calling this method.
//   /// Otherwise, throws [NotAuthenticatedError].
//   Future<DocumentReference> userDocument() async {
//     final userOption = await getIt<IAuthFacade>().getSignedInUser();
//     final user = userOption.getOrElse(() => throw NotAuthenticatedError());
//     return Firestore.instance
//         .collection('users')
//         .document(user.id.getOrCrash());
//   }
// }

extension DocumentReferenceX on DocumentReference {
  CollectionReference get usersCollection => collection('users');

  /// Nested subcollection under a [noteCollection]'s document.
//   CollectionReference get todoCollection => collection('todos');
}
