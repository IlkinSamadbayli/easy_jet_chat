import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
final dynamic uid;
  DatabaseService({required this.uid});

  final CollectionReference userCollection =  FirebaseFirestore.instance.collection("users");
  final CollectionReference groupCollection = FirebaseFirestore.instance.collection("groups");

Future updateUserData (String email, String fullName) async{
  return await userCollection.doc(uid).set({
    'email': email,
    'name': fullName,
    'groups': [],
    'uid': uid,
    'profilePic': '',
  });
}

}