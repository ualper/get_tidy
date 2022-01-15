// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_tidy/firebase_auth/MyFirebaseApp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // /await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(
    GetMaterialApp(
      // home: CalendarApp(),
      // home: MyFirebaseApp(),
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

// void main() async => {
//       // WidgetsFlutterBinding.ensureInitialized(),
//       // await Firebase.initializeApp(),
//       // TODO: FIREBASE BAGLANTISI YOK ONU SAGLA
//       runApp(
//         GetMaterialApp(
//           // home: CalendarApp(),
//           home: MyFirebaseApp(),
//           // home: Home(),
//           debugShowCheckedModeBanner: false,
//         ),
//       )
//     };

class Home extends StatelessWidget {
  var count = 0.obs;
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(title: Text("counter")),
        body: Center(
          child: Obx(() => Text(
                "$count",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              //Get.snackbar('title', 'message');
              count++;
            }));
  }
}
