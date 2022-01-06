import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';

// Sign Out Repository Implementation
class FirebaseSignOutRepoImpl extends ISignOutRepo{
  @override
  Future<void> signOut() async{
   await FirebaseAuth.instance.signOut();
  }

  // return is user out
  // or not 
  @override
  Future<bool> isUserOut() async{
    Completer<bool> isUserOutCompleter =Completer<bool>();
     FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        isUserOutCompleter.complete(true) ;
      } else {
        isUserOutCompleter.complete(false) ;
      }
    });
    return  isUserOutCompleter.future;
  }
} 