// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:comment_box/comment/comment.dart';

class FirestoreActionTest extends StatefulWidget {
  FirestoreActionTest({Key? key}) : super(key: key);

  @override
  _FirestoreActionTestState createState() => _FirestoreActionTestState();
}

class _FirestoreActionTestState extends State<FirestoreActionTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(width: 30, height: 30, color: Color.fromARGB(0, 0, 0, 255)),

            SizedBox(
                width: 30,
                height: 30,
                child: FittedBox(fit: BoxFit.fill, child: Image.asset('assets/drawable-xxxhdpi/icon_star_grey.png'))),
            SizedBox(width: 50, height: 50),
            SizedBox(child: Image.asset('assets/drawable-xxxhdpi/icon_star_orange.png')),
            SizedBox(width: 50, height: 50),
            SizedBox(child: Image.asset('assets/drawable-xxxhdpi/icon_star_yellow.png')),
            SizedBox(width: 50, height: 50),
            SizedBox(child: Image.asset('assets/drawable-xxxhdpi/icon_star_openGrey.png')),
            SizedBox(width: 50, height: 50),

            // -------------------------------------------------
            GestureDetector(
                onTap: () {
                  Get.snackbar('Add', 'Comment');
                },
                child: Icon(Icons.comment)),
            // -------------------------------------------------
            // -------------------------------------------------
            GestureDetector(
                onTap: () {
                  Get.snackbar('Add', 'Comment');
                },
                child: Icon(Icons.favorite)),
            // -------------------------------------------------
            // -------------------------------------------------
            ElevatedButton(onPressed: () {}, child: Text('ADD COMMENT'))
            // -------------------------------------------------
          ]),
    );
  }
}
