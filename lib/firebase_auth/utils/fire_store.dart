// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FireStore extends StatelessWidget {
  const FireStore({Key? key}) : super(key: key);

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    //  implement build
    throw UnimplementedError();
  }
}

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('notes');

class Database {
  static String? userUid;

  // --> CREATE
  static Future<void> addItem({
    required String title,
    required String description,
  }) async {
    DocumentReference documentReferencer = _mainCollection.doc(userUid).collection('items').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "title": title,
      "description": description,
    };

    await documentReferencer.set(data).whenComplete(() => print("Notes item added to the database")).catchError((e) => print(e));
  }

  // --> READ
  static Stream<QuerySnapshot> readItems() {
    CollectionReference notesItemCollection = _mainCollection.doc(userUid).collection('items');

    return notesItemCollection.snapshots();
  }

  // --> UPDATE
  static Future<void> updateItem({
    required String title,
    required String description,
    required String docId,
  }) async {
    DocumentReference documentReferencer = _mainCollection.doc(userUid).collection('items').doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "title": title,
      "description": description,
    };

    await documentReferencer
        .update(data)
        .whenComplete(() => print("Note item updated in the database"))
        .catchError((e) => print(e));
  }

  // --> DELETE
  static Future<void> deleteItem({
    required String docId,
  }) async {
    DocumentReference documentReferencer = _mainCollection.doc(userUid).collection('items').doc(docId);

    await documentReferencer
        .delete()
        .whenComplete(() => print('Note item deleted from the database'))
        .catchError((e) => print(e));
  }
}
