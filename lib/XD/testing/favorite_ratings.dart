import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';
import 'package:get_tidy/MyController.dart';

class FavoriteRatings extends StatefulWidget {
  Widget sharedWidget;
  FavoriteRatings({Key? key, required this.sharedWidget}) : super(key: key);
  @override
  State<FavoriteRatings> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<FavoriteRatings> {
  double value = 3.5;

  @override
  Widget build(BuildContext context) {
    MyController widgetcontroller = Get.put(MyController());
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rating'),
        ),
        body: Center(
          child: RatingStars(
            value: value,
            onValueChanged: (v) {
              // -------------------
              setState(() {
                value = v;
              });

              print(value);
              // -------------------
            },
            starBuilder: (index, color) => Icon(
              Icons.ac_unit_outlined,
              // Icons.ac_unit_outlined,
              color: color,
            ),
            starCount: 5,
            starSize: 20,
            valueLabelColor: const Color(0xff9b9b9b),
            valueLabelTextStyle:
                const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 15.0),
            valueLabelRadius: 10,
            maxValue: 5,
            starSpacing: 2,
            maxValueVisibility: true,
            valueLabelVisibility: true,
            animationDuration: Duration(milliseconds: 1000),
            valueLabelPadding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
            valueLabelMargin: const EdgeInsets.only(right: 8),
            starOffColor: const Color(0xffe7e8ea),
            starColor: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
