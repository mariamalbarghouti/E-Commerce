import 'package:firebase_auth/firebase_auth.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';

class SignOutRepoImpl extends SignOutRepo{
  @override
  Future<void> signOut() async{
   await FirebaseAuth.instance.signOut();
  }
} 