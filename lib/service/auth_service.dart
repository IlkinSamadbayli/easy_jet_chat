import 'package:easy_jet_chat/service/database_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

// login

// register
  Future registerUserWithEmailandPassword(
      String email, String name, String password) async {
    try {
      User user = (await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (user!=null) {
        DatabaseService(uid: user.uid).updateUserData(email, name);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e;
    }
  }

// signout
}
