// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:get/get.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_tidy/XD/choose_ironing.dart';

import 'package:get_tidy/XD/service_provider_main.dart';
import 'package:get_tidy/XD/choose_drycleaning.dart';
import 'package:location/location.dart';

class ServiceRecipientMain extends StatefulWidget {
  @override
  State<ServiceRecipientMain> createState() => _ServiceRecipientMainState();
}

class _ServiceRecipientMainState extends State<ServiceRecipientMain> {
  var onTappedService = 0;
  // control the change offset
  bool istappedDry = false;

  bool istappedIron = false;

  Color changeColor(Color ownColor, bool onTapped) {
    return (onTapped == true) ? Colors.cyanAccent : ownColor;
  }

  Offset changeOffset(bool onTapped) {
    return (onTapped == true) ? Offset(7, 7) : Offset(0, 0);
  }

  late double latitude_current = 40.8040;
  late double longitude_current = 29.4340;

  void _GetCurrentLocation() async {
    var location = Location();
    location.changeSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 0,
      interval: 100,
    );
    location.onLocationChanged.listen((LocationData currentLocation) {
      latitude_current = currentLocation.latitude!;
      longitude_current = currentLocation.longitude!;
    });
  }

//-------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffff7f00),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 229.0, middle: 0.5027),
            Pin(size: 71.0, middle: 0.199),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: const Color(0xffffffff),
                  height: 1.3333333333333333,
                ),
                children: [
                  TextSpan(
                    text: 'Chose your \n',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'Service to Get Tidy',
                    style: TextStyle(
                      color: const Color(0xff022c43),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),

          //left box
          Pinned.fromPins(
            Pin(size: 166.0, start: 17.0),
            Pin(size: 244.0, middle: 0.4185),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  istappedIron = false;
                  istappedDry = true;
                });
              },
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color(0xffffffff),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 5, 255, 213), //const Color(0x29000000),
                              // SERVICE_OFFSET_DryCleaning
                              offset: changeOffset(istappedDry),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.1506, endFraction: 0.1506),
                    Pin(size: 50.0, middle: 0.5258),
                    child:
                        // Adobe XD layer: 'Home' (text)
                        Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          color: const Color(0xffff7f00),
                        ),
                        children: [
                          TextSpan(
                            text: 'Business \n',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: ' Organisation',
                            style: TextStyle(
                              color: const Color(0xff2f2f2f),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 24.0, start: 8.0),
                    Pin(size: 24.0, start: 9.0),
                    child:
                        // Adobe XD layer: 'Radio Button' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child:
                              // Adobe XD layer: 'Dot 2' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                              color: Color.fromARGB(255, 144, 144, 144),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 5.0, end: 5.0),
                          Pin(start: 5.0, end: 5.0),
                          child:
                              // Adobe XD layer: 'Dot 2' (shape)
                              Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                                color: changeColor(Colors.white, istappedDry)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 16.0, end: 10.0),
                    Pin(size: 133.0, start: 21.3),
                    child:
                        // Adobe XD layer: 'Flat' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 21.0, middle: 0.6285),
                          Pin(size: 52.0, middle: 0.284),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff2980b9),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 9.0, middle: 0.632),
                          Pin(size: 9.0, middle: 0.295),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff9fe0f6),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 9.0, middle: 0.632),
                          Pin(size: 9.0, middle: 0.3719),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff9fe0f6),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 21.0, middle: 0.2588),
                          Pin(size: 52.0, middle: 0.284),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff2980b9),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 9.0, middle: 0.2656),
                          Pin(size: 9.0, middle: 0.295),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff9fe0f6),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 9.0, middle: 0.2656),
                          Pin(size: 9.0, middle: 0.3719),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff9fe0f6),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 29.0, middle: 0.4396),
                          Pin(size: 69.0, start: 6.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              color: const Color(0xff3498db),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 36.0, middle: 0.4355),
                          Pin(size: 34.0, middle: 0.2071),
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(size: 9.0, start: 0.0),
                                Pin(size: 9.0, start: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: const Color(0xff9fe0f6),
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 10.0, middle: 0.5),
                                Pin(size: 9.0, start: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: const Color(0xff9fe0f6),
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 9.0, end: 0.0),
                                Pin(size: 9.0, start: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: const Color(0xff9fe0f6),
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 9.0, start: 0.0),
                                Pin(size: 10.0, middle: 0.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: const Color(0xff9fe0f6),
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 10.0, middle: 0.5),
                                Pin(size: 10.0, middle: 0.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: const Color(0xff9fe0f6),
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 9.0, end: 0.0),
                                Pin(size: 10.0, middle: 0.5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: const Color(0xff9fe0f6),
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 9.0, start: 0.0),
                                Pin(size: 9.0, end: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: const Color(0xff9fe0f6),
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 10.0, middle: 0.5),
                                Pin(size: 9.0, end: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: const Color(0xff9fe0f6),
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 9.0, end: 0.0),
                                Pin(size: 9.0, end: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1.0),
                                    color: const Color(0xff9fe0f6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 27.6, middle: 0.4403),
                          Pin(size: 3.1, middle: 0.4104),
                          child: SvgPicture.string(
                            _svg_www,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 18.4, middle: 0.4449),
                          Pin(size: 23.0, middle: 0.4588),
                          child: SvgPicture.string(
                            _svg_c34z9,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 21.5, middle: 0.4434),
                          Pin(size: 26.1, middle: 0.4576),
                          child: SvgPicture.string(
                            _svg_vl1lcg,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 75.0, middle: 0.3968),
                          Pin(size: 3.1, middle: 0.5536),
                          child: SvgPicture.string(
                            _svg_kg4b0x,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 12.6, middle: 0.4474),
                          Pin(size: 3.9, start: 12.4),
                          child: SvgPicture.string(
                            _svg_lhfy,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 21.4, middle: 0.4433),
                          Pin(size: 5.3, start: 7.7),
                          child: SvgPicture.string(
                            _svg_nxem9q,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 30.0, middle: 0.439),
                          Pin(size: 6.9, start: 0.0),
                          child: SvgPicture.string(
                            _svg_lqg3ax,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 75.0, middle: 0.3969),
                          Pin(size: 3.1, middle: 0.3573),
                          child: SvgPicture.string(
                            _svg_ebuxx9,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 2.0, end: 0.0),
                          child: SvgPicture.string(
                            _svg_apqr2w,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 49.0, end: 15.0),
            Pin(size: 244.0, middle: 0.4169),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  istappedIron = true;
                  istappedDry = false;
                });
              },
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(size: 166.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 5, 255, 213), //const Color(0x29000000),
                            // SERVICE_OFFSET_DryCleaning
                            offset: changeOffset(istappedIron),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.6063, endFraction: 0.1695),
                    Pin(size: 50.0, middle: 0.5258),
                    child:
                        // Adobe XD layer: 'Home' (text)
                        Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          color: const Color(0xffff7f00),
                        ),
                        children: [
                          TextSpan(
                            text: 'Home\n',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: ' Personal',
                            style: TextStyle(
                              color: const Color(0xff2f2f2f),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 24.0, middle: 0.608),
                    Pin(size: 24.0, start: 12.0),
                    child: Stack(
                      // Adobe XD layer: 'Radio Button' (group)
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child:
                              // Adobe XD layer: 'Dot 2' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                              color: Color.fromARGB(255, 144, 144, 144),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 5.0, end: 5.0),
                          Pin(start: 5.0, end: 5.0),
                          child:
                              // Adobe XD layer: 'Dot 2' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                              color: changeColor(Color.fromARGB(255, 255, 255, 255), istappedIron),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 75.0, middle: 0.7669),
                    Pin(size: 75.0, start: 27.2),
                    child:
                        // Adobe XD layer: 'house' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 9.6, middle: 0.8234),
                          Pin(size: 16.8, middle: 0.2075),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xfff05540),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 17.0, end: 10.9),
                          Pin(size: 9.1, start: 3.5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xfff3705a),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 51.6, end: 11.0),
                          Pin(start: 11.0, end: 1.0),
                          child: SvgPicture.string(
                            _svg_rttr83,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 51.8, end: 10.9),
                          Pin(size: 43.2, start: 11.0),
                          child: SvgPicture.string(
                            _svg_ezxbo,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 20.6, middle: 0.2786),
                          Pin(size: 30.6, end: 1.0),
                          child: SvgPicture.string(
                            _svg_x54bpc,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 27.0, middle: 0.7171),
                          Pin(size: 23.6, end: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff344a5e),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 21.3, middle: 0.6999),
                          Pin(size: 18.0, end: 10.8),
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(size: 9.3, start: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff8ad7f8),
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 9.3, end: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff8ad7f8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 5.0, end: 3.0),
                          Pin(size: 47.6, start: 0.0),
                          child: SvgPicture.string(
                            _svg_x5kmf9,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 3.1, end: 0.0),
                          child: SvgPicture.string(
                            _svg_mb2in,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.5, endFraction: 0.05),
                    Pin(size: 33.0, middle: 0.8578),
                    child:
                        // Adobe XD layer: 'Home' (text)
                        Text(
                      'IRONING',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 25,
                        color: const Color(0xffff7f00),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        istappedIron = false;
                        istappedDry = true;
                      });
                    },
                    child: Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.6954),
                      Pin(size: 58.0, middle: 0.9032),
                      child:
                          // Adobe XD layer: 'Home' (text)
                          Text(
                        'DRY \nCLEANING',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          color: const Color(0xffff7f00),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 250.0, end: 0.0),
            child: SvgPicture.string(
              _svg_zgd5,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 17.0, end: 15.0),
            Pin(size: 46.0, middle: 0.6971),
            child: SvgPicture.string(
              _svg_qxcohx,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          // enter location part
          GestureDetector(
            onTap: () {
              // take-location
              Get.snackbar('enter', 'location');
              _GetCurrentLocation();
            },
            child: Pinned.fromPins(
              //Set location text
              Pin(size: 250.0, start: 60.0),
              Pin(size: 40, end: 190.0),
              child: Text(
                'Enter your  location for service',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 15,
                  color: Color.fromARGB(255, 102, 114, 128),
                  height: 1.4285714285714286,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 15.0, start: 30.0),
            Pin(size: 20.0, middle: 0.69),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffff7f00),
              ),
            ),
          ),
          //current location
          Pinned.fromPins(
            Pin(size: 307.0, start: 38.0),
            Pin(size: 48.0, middle: 0.82),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: const Color(0xffff7f00),
                ),
                children: [
                  TextSpan(
                    text: 'Current Location:\n',
                  ),
                  TextSpan(
                    text: 'Service Location near - Uskudar 34567',
                    style: TextStyle(
                      color: const Color(0xffffffff),
                    ),
                  ),
                ],
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          //Search now button
          GestureDetector(
            onTap: () {
              // SEARCH NOW TAPPED
              Get.to((istappedIron)
                  ? ChooseIroning(
                      latitude_current: latitude_current,
                      longitude_current: longitude_current,
                    )
                  : ChooseDrycleaning(
                      latitude_current: latitude_current,
                      longitude_current: longitude_current,
                    ));
            },
            child: Pinned.fromPins(
              Pin(size: 146.0, end: 30.0),
              Pin(size: 50.0, end: 39.0),
              child: Stack(
                // Adobe XD layer: 'Primary Button - Sm…' (group)
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child:
                        // Adobe XD layer: 'Button' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: const Color(0xffff7f00),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 150.0, middle: 0.9),
                    Pin(size: 20.0, middle: 0.5278),
                    child: Text(
                      'Search Now',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 15,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Later button
          GestureDetector(
            onTap: () => Get.back(),
            child: Pinned.fromPins(
              Pin(size: 146.0, start: 30.0),
              Pin(size: 50.0, end: 39.0),
              child:
                  // Adobe XD layer: 'Button' (shape)
                  Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(width: 2.0, color: const Color(0xffffffff)),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.0, middle: 0.2526),
            Pin(size: 14.0, end: 59.0),
            child: Text(
              'Later',
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 15,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 140.0, end: 29.0),
            Pin(size: 2.0, middle: 0.4815),
            child: SvgPicture.string(
              _svg_r3ip22,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 21.0, end: 21.0),
            Pin(size: 100, start: 30),
            child: Image.asset('assets/drawable-hdpi/MainTidyLabel.png'), //XDgetTidyLabel(),
          ),
        ],
      ),
    );
  }
}

const String _svg_www =
    '<svg viewBox="49.5 53.3 27.6 3.1" ><path transform="translate(26.5, 8.33)" d="M 49.06660461425781 48.06665802001953 L 24.5333309173584 48.06665802001953 C 23.68649482727051 48.06665802001953 23.00000190734863 47.38016510009766 23.00000190734863 46.53333282470703 C 23.00000190734863 45.68649291992188 23.68649482727051 45 24.5333309173584 45 L 49.06660461425781 45 C 49.91343688964844 45 50.59992980957031 45.68649291992188 50.59992980957031 46.53333282470703 C 50.59992980957031 47.38016510009766 49.91343688964844 48.06665802001953 49.06660461425781 48.06665802001953 Z" fill="#2980b9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c34z9 =
    '<svg viewBox="54.1 50.5 18.4 23.0" ><path transform="translate(28.1, 4.47)" d="M 26 46.00000381469727 L 44.39995574951172 46.00000381469727 L 44.39995574951172 68.99993896484375 L 26 68.99993896484375 L 26 46.00000381469727 Z" fill="#9fe0f6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vl1lcg =
    '<svg viewBox="52.6 48.9 21.5 26.1" ><path transform="translate(27.56, 3.93)" d="M 44.93328475952148 45 L 26.53332901000977 45 C 25.68649673461914 45 25 45.68649291992188 25 46.53333282470703 L 25 69.53327178955078 C 25 70.38010406494141 25.68649673461914 71.06660461425781 26.53332901000977 71.06660461425781 L 44.93328475952148 71.06660461425781 C 45.78011703491211 71.06660461425781 46.46661376953125 70.38010406494141 46.46661376953125 69.53327178955078 L 46.46661376953125 46.53333282470703 C 46.46661376953125 45.68649291992188 45.78011703491211 45 44.93328475952148 45 Z M 28.06665802001953 48.06665802001953 L 34.19997787475586 48.06665802001953 L 34.19997787475586 67.99994659423828 L 28.06665802001953 67.99994659423828 L 28.06665802001953 48.06665802001953 Z M 43.39995574951172 67.99994659423828 L 37.26663589477539 67.99994659423828 L 37.26663589477539 48.06665802001953 L 43.39995574951172 48.06665802001953 L 43.39995574951172 67.99994659423828 Z" fill="#2980b9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kg4b0x =
    '<svg viewBox="25.8 71.9 75.0 3.1" ><path transform="translate(23.8, 11.93)" d="M 75.75 63.0666618347168 L 3.25 63.0666618347168 C 2.559643983840942 63.0666618347168 1.99999988079071 62.38016128540039 1.99999988079071 61.53332901000977 C 1.99999988079071 60.68649673461914 2.559643983840942 60.00000381469727 3.25 60.00000381469727 L 75.75 60.00000381469727 C 76.44035339355469 60.00000381469727 77 60.68649673461914 77 61.53332901000977 C 77 62.38016128540039 76.44035339355469 63.0666618347168 75.75 63.0666618347168 Z" fill="#333333" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lhfy =
    '<svg viewBox="57.0 12.4 12.6 3.9" ><path transform="translate(29.1, 0.38)" d="M 38.96025466918945 15.94591331481934 C 38.77644348144531 15.94549751281738 38.59417724609375 15.91226577758789 38.42204666137695 15.8477783203125 C 35.69475173950195 14.82346343994141 32.68843841552734 14.82346153259277 29.96113967895508 15.84778022766113 C 29.16801834106445 16.14457702636719 28.28463745117188 15.74185562133789 27.98817443847656 14.9486083984375 C 27.69171142578125 14.15536117553711 28.09443664550781 13.27198028564453 28.88768005371094 12.97551727294922 C 32.30927658081055 11.69223594665527 36.07999420166016 11.69235610961914 39.50151443481445 12.97585487365723 C 40.19709777832031 13.23517417907715 40.60700988769531 13.95553398132324 40.47464370727539 14.68598747253418 C 40.34228134155273 15.41643905639648 39.70566177368164 15.94715881347656 38.96331024169922 15.94591331481934 Z" fill="#ffcc5c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nxem9q =
    '<svg viewBox="52.6 7.7 21.4 5.3" ><path transform="translate(27.56, 0.68)" d="M 44.90332412719727 12.32026100158691 C 44.65837860107422 12.32005310058594 44.41704177856445 12.26116371154785 44.19952774047852 12.14852523803711 C 38.89186096191406 9.398809432983398 32.57922744750977 9.398811340332031 27.27156448364258 12.14852905273438 C 26.78353881835938 12.4185962677002 26.18735122680664 12.4023494720459 25.71475601196289 12.10610389709473 C 25.24216461181641 11.80985832214355 24.96771240234375 11.28034782409668 24.99809265136719 10.72340774536133 C 25.02847290039062 10.16646575927734 25.35889053344727 9.669950485229492 25.86090087890625 9.426868438720703 C 32.05318069458008 6.218862056732178 39.41791915893555 6.218864917755127 45.61019134521484 9.426870346069336 C 46.23661804199219 9.752981185913086 46.55927658081055 10.46477890014648 46.39167404174805 11.15082740783691 C 46.22406387329102 11.83687782287598 45.60955047607422 12.31971740722656 44.90332412719727 12.32026100158691 Z" fill="#f7931e" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lqg3ax =
    '<svg viewBox="48.3 0.0 30.0 6.9" ><path transform="translate(26.07, -2.0)" d="M 50.69791412353516 8.850959777832031 C 50.41781997680664 8.850785255432129 50.14312362670898 8.773892402648926 49.90364837646484 8.628628730773926 C 42.11520004272461 3.881539821624756 32.32775497436523 3.881539821624756 24.539306640625 8.628628730773926 C 23.81526565551758 9.068135261535645 22.87202072143555 8.83747386932373 22.43251419067383 8.113429069519043 C 21.99300765991211 7.389385223388672 22.22367095947266 6.446140766143799 22.94771575927734 6.006633281707764 C 31.71376037597656 0.6643458604812622 42.72920608520508 0.6643487215042114 51.4952392578125 6.006637573242188 C 52.08366394042969 6.363572597503662 52.3621826171875 7.068835258483887 52.17642211914062 7.731507301330566 C 51.99065399169922 8.39417839050293 51.38612365722656 8.851899147033691 50.69790649414062 8.850959777832031 Z" fill="#f15a24" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ebuxx9 =
    '<svg viewBox="25.8 46.4 75.0 3.1" ><path transform="translate(23.8, -13.57)" d="M 75.75 63.0666618347168 L 3.25 63.0666618347168 C 2.559643983840942 63.0666618347168 1.99999988079071 62.38016128540039 1.99999988079071 61.53332901000977 C 1.99999988079071 60.68649673461914 2.559643983840942 60.00000381469727 3.25 60.00000381469727 L 75.75 60.00000381469727 C 76.44035339355469 60.00000381469727 77 60.68649673461914 77 61.53332901000977 C 77 62.38016128540039 76.44035339355469 63.0666618347168 75.75 63.0666618347168 Z" fill="#333333" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_apqr2w =
    '<svg viewBox="0.0 131.0 140.0 2.0" ><path transform="translate(-2.0, 71.0)" d="M 139.6666717529297 62.00000381469727 L 4.333333492279053 62.00000381469727 C 3.044669628143311 62.00000381469727 1.99999988079071 61.55228805541992 1.99999988079071 60.99999618530273 C 1.99999988079071 60.44771957397461 3.044669628143311 60.00000381469727 4.333333492279053 60.00000381469727 L 139.6666717529297 60.00000381469727 C 140.955322265625 60.00000381469727 142 60.44771957397461 142 60.99999618530273 C 142 61.55228805541992 140.955322265625 62.00000381469727 139.6666717529297 62.00000381469727 Z" fill="#333333" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rttr83 =
    '<svg viewBox="12.3 11.0 51.6 63.0" ><path transform="translate(-32.45, -56.17)" d="M 44.79999542236328 96.79983520507812 L 44.79999542236328 130.1750793457031 L 96.40016937255859 130.1750793457031 L 96.40016937255859 96.79983520507812 C 86.26445770263672 85.17139434814453 80.60418701171875 78.67751312255859 70.60002136230469 67.19999694824219 L 70.60002136230469 67.19999694824219 C 60.59598159790039 78.82844543457031 54.93570709228516 85.32232666015625 44.79999542236328 96.79983520507812 Z" fill="#ffd15c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ezxbo =
    '<svg viewBox="12.4 11.0 51.8 43.2" ><path transform="translate(-32.45, -56.17)" d="M 96.57522583007812 101.5000534057617 C 86.43102264404297 88.02510833740234 80.76599884033203 80.50005340576172 70.75345611572266 67.19999694824219 C 65.61546325683594 73.84994506835938 61.66314697265625 79.09994506835938 57.71083831787109 84.34994506835938 C 53.75853729248047 89.59994506835938 49.80622863769531 94.84994506835938 44.80001831054688 101.4998931884766 L 44.80001831054688 109.3748931884766 C 54.94422912597656 95.89994812011719 60.60923767089844 88.37489318847656 70.62179565429688 75.07483673095703 C 80.76599884033203 88.54978179931641 86.43102264404297 96.07483673095703 96.44356536865234 109.3748931884766 L 96.44356536865234 110.4248886108398 L 96.44356536865234 110.4248886108398 L 96.44356536865234 101.4998931884766 L 96.57522583007812 101.4998931884766 Z" fill="#f7b64c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x54bpc =
    '<svg viewBox="15.1 43.4 20.6 30.6" ><path transform="translate(-75.53, -281.96)" d="M 111.31689453125 355.9588928222656 L 90.66699981689453 355.9588928222656 L 90.66699981689453 335.658935546875 C 90.66699981689453 329.8839416503906 95.39199829101562 325.333984375 100.991943359375 325.333984375 L 100.991943359375 325.333984375 C 106.7669448852539 325.333984375 111.31689453125 330.0589904785156 111.31689453125 335.658935546875 L 111.31689453125 355.9588928222656 Z" fill="#415a6b" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x5kmf9 =
    '<svg viewBox="5.0 0.0 67.0 47.6" ><path transform="translate(5.0, 0.0)" d="M 65.74397277832031 38.14994430541992 L 36.57099914550781 1.575000166893005 C 34.89599227905273 -0.5249999761581421 31.9647331237793 -0.5249999761581421 30.28972816467285 1.575000166893005 L 1.256254315376282 38.14994430541992 C -0.4187513589859009 40.24994659423828 -0.4187513589859009 43.92494583129883 1.256254315376282 46.02494812011719 C 2.931260108947754 48.12494659423828 5.862520217895508 48.12494659423828 7.537524700164795 46.02494812011719 L 33.5001106262207 13.47494697570801 L 59.46269989013672 46.02494430541992 C 61.1377067565918 48.12494277954102 64.06896209716797 48.12494277954102 65.74397277832031 46.02494430541992 C 67.41897583007812 43.75005722045898 67.41897583007812 40.24994659423828 65.74397277832031 38.14994430541992 Z" fill="#f3705a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mb2in =
    '<svg viewBox="0.0 71.9 75.0 3.1" ><path transform="translate(-2.0, 11.93)" d="M 75.74999237060547 63.0666618347168 L 3.25 63.0666618347168 C 2.559643983840942 63.0666618347168 2 62.38016128540039 2 61.53332901000977 C 2 60.68649673461914 2.559643983840942 60.00000381469727 3.25 60.00000381469727 L 75.74999237060547 60.00000381469727 C 76.44034576416016 60.00000381469727 77 60.68649673461914 77 61.53332901000977 C 77 62.38016128540039 76.44034576416016 63.0666618347168 75.74999237060547 63.0666618347168 Z" fill="#333333" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zgd5 =
    '<svg viewBox="0.0 565.0 412.0 305.0" ><path transform="translate(0.0, 565.0)" d="M 17.57866668701172 0 L 394.4213256835938 0 C 404.1297607421875 0 412 7.720319271087646 412 17.24381637573242 L 412 305 L 0 305 L 0 17.24381637573242 C 0 7.720319271087646 7.870236873626709 0 17.57866668701172 0 Z" fill="#022c43" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qxcohx =
    '<svg viewBox="17.0 574.4 380.0 46.0" ><path transform="translate(17.0, 574.43)" d="M 12.58278274536133 0 L 367.417236328125 0 C 374.3665466308594 0 380.0000305175781 5.148725032806396 380.0000305175781 11.5 L 380.0000305175781 34.5 C 380.0000305175781 40.85127258300781 374.3665466308594 46 367.417236328125 46 L 12.58278274536133 46 C 5.633502960205078 46 0 40.85127258300781 0 34.5 L 0 11.5 C 0 5.148725032806396 5.633502960205078 0 12.58278274536133 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r3ip22 =
    '<svg viewBox="243.0 417.9 140.0 2.0" ><path transform="translate(241.0, 357.93)" d="M 139.6666717529297 62.00000381469727 L 4.333333492279053 62.00000381469727 C 3.044669628143311 62.00000381469727 1.99999988079071 61.55228805541992 1.99999988079071 60.99999618530273 C 1.99999988079071 60.44771957397461 3.044669628143311 60.00000381469727 4.333333492279053 60.00000381469727 L 139.6666717529297 60.00000381469727 C 140.955322265625 60.00000381469727 142 60.44771957397461 142 60.99999618530273 C 142 61.55228805541992 140.955322265625 62.00000381469727 139.6666717529297 62.00000381469727 Z" fill="#333333" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
