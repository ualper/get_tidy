import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('UsersOfApp');

class FireStoreDatabase {
  static String? userUid;

  static Future<void> addUser({
    required String firstname,
    required String lastname,
    required String email,
    required String password,
    required String phone,
    required GeoPoint location,
    required int likes,
    required double ratings,
    required Map comments,
  }) async {
    DocumentReference documentReferencer = _mainCollection.doc(userUid);

    Map<String, dynamic> userData = <String, dynamic>{
      "firstname": firstname,
      "lastname": lastname,
      "email": email,
      "password": password,
      "phone": phone,
      "location": location,
      'likes': likes,
      'ratings': ratings,
      'comments': comments,
    };

    await documentReferencer
        .set(userData)
        .whenComplete(() => print("Note User added to the userDatabase"))
        .catchError((e) => print(e));
  }

  static Future<void> updateUser({
    required String firstname,
    required String lastname,
    required String email,
    required String password,
    required String phone,
    required String location,
    required String docId,
    required int likes,
    required double ratings,
    required Map comments,
  }) async {
    DocumentReference documentReferencer = _mainCollection.doc(userUid).collection('Users').doc(docId);

    Map<String, dynamic> userData = <String, dynamic>{
      "firstname": firstname,
      "lastname": lastname,
      "email": email,
      "password": password,
      "phone": phone,
      "location": location,
      'likes': likes,
      'ratings': ratings,
      'comments': comments,
    };

    await documentReferencer
        .update(userData)
        .whenComplete(() => print("Note User updated in the userDatabase"))
        .catchError((e) => print(e));
  }

  static Stream<QuerySnapshot> readUsers() {
    CollectionReference notesUserCollection = _mainCollection.doc(userUid).collection('Users');

    return notesUserCollection.snapshots();
  }

  static Future<void> deleteUser({
    required String docId,
  }) async {
    DocumentReference documentReferencer = _mainCollection.doc(userUid).collection('Users').doc(docId);

    await documentReferencer
        .delete()
        .whenComplete(() => print('Note User deleted from the userDatabase'))
        .catchError((e) => print(e));
  }

  // static Future<void> addLikes({
  //   required int likes,
  // }) async {
  //   DocumentReference documentReferencer = _mainCollection.doc(userUid).collection('Users').doc();

  //   Map<String, dynamic> userData = <String, dynamic>{
  //     "firstname": firstname,
  //     "lastname": lastname,
  //     "email": email,
  //     "password": password,
  //     "phone": phone,
  //     "location": location,
  //     'likes': likes,
  //     'ratings': ratings,
  //     'comments': comments,
  //   };

  //   await documentReferencer
  //       .set(userData)
  //       .whenComplete(() => print("Note User added to the userDatabase"))
  //       .catchError((e) => print(e));
  // }

  static Future<void> readSpecificUser({
    required String email,
  }) async {
    var readed = _mainCollection.where('email', isEqualTo: email);
    print(readed.toString());
  }
}
