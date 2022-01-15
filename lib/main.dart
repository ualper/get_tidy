// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:get_tidy/XD/ChooseServiceType.dart';
import 'package:get_tidy/XD/ServiceRecipientMain.dart';
import 'package:get_tidy/XD/SplashScreen.dart';
import 'package:get_tidy/XD/add_comment.dart';
import 'package:get_tidy/XD/choose_ironing_toolbar.dart';
import 'package:get_tidy/XD/forgot_password.dart';
import 'package:get_tidy/XD/service_provider_main.dart';
import 'package:get_tidy/XD/choose_ironing.dart';
import 'package:get_tidy/XD/testing/get_location.dart';
import 'package:location/location.dart';
import 'XD/Home1.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: ServiceRecipientMain(),
      // home: Home(),
      // home: MyLocation(),
      // home: FirestoreActionTest(),
      // home: AddComment(),
    ),
  );
}

class HomeTest extends StatelessWidget {
  var count = 0.obs;
  @override
  Widget build(context) {
    //-----------------------
    return Scaffold(
        appBar: AppBar(title: Text("counter")),
        body: Column(children: [
          Obx(() => Text(
                "$count",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )),
          // sharedWidget
        ]),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  //Get.snackbar('title', 'message');
                  count++;
                }),
            SizedBox(width: 20),
            FloatingActionButton(
                child: Icon(Icons.pages),
                onPressed: () {
                  // Get.to(Home1());
                }),
          ],
        ));
  }
}
