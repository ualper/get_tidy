// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_tidy/MyController.dart';
import 'package:get_tidy/XD/service_provider_main.dart';

import 'ServiceRecipientMain.dart';
// import 'package:get_tidy/XD/xd_google_pixel4_provider_main.dart';
// import 'package:get_tidy/XD/xd_home_chose_service_provider.dart';
// import 'package:get_tidy/XD/xd_home_service_recipient.dart';
// import 'package:get_tidy/XD/xd_provider_main.dart';

class ChooseServiceType extends StatefulWidget {
  @override
  State<ChooseServiceType> createState() => _ChooseServiceTypeState();
}

class _ChooseServiceTypeState extends State<ChooseServiceType> {
//-------------
  bool istapped1 = false;
  bool istapped2 = false;

  Color changeColor(Color ownColor, bool onTapped) {
    return (onTapped == true) ? Colors.greenAccent : ownColor;
  }

//-------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(start: 0.0, end: 0.0),
              Pin(start: 0.0, end: 0.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xffff7f00),
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 200, middle: 0.5),
              Pin(size: 90, middle: 0.25),
              child: Container(
                child: const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 27,
                      color: Color(0xffffffff),
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: 'Choose your ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'Service Type',
                        style: TextStyle(
                          color: Color(0xff022c43),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 166.0, start: 15.0),
              Pin(size: 129.0, middle: 0.4467),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        // recipient box color
                        color: changeColor(const Color(0xffffffff), istapped1),
                        boxShadow: [
                          const BoxShadow(
                            color: Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Pinned.fromPins(
              Pin(start: 15.0, end: 16.0),
              Pin(size: 129.0, middle: 0.4453),
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(size: 166.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        // provider box color
                        color: changeColor(const Color(0xffffffff), istapped2),
                      ),
                    ),
                  ),

                  //SERVICE  PROVIDER
                  GestureDetector(
                    onTap: () {
                      // Get.snackbar('selected', 'provider');
                      setState(() {
                        istapped1 = false;
                        istapped2 = true;
                      });
                    },
                    child: Pinned.fromPins(
                      Pin(startFraction: 0.5853, endFraction: 0.021),
                      Pin(size: 52.0, middle: 0.6478),
                      child:
                          // Adobe XD layer: 'Home' (text)
                          const Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: Color(0xffff7f00),
                          ),
                          children: [
                            TextSpan(
                              text: 'I wanna be\n',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: ' Service Provider',
                              style: TextStyle(
                                color: Color(0xff2f2f2f),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  // SERVICE RECIPIENT
                  GestureDetector(
                    onTap: () {
                      // Get.snackbar('selected', 'recipient');
                      setState(() {
                        istapped2 = false;
                        istapped1 = true;
                      });
                    },
                    onSecondaryTap: () {
                      // Get.snackbar('selected', 'recipient');
                      setState(() {
                        istapped1 = false;
                        istapped2 = false;
                      });
                    },
                    child: Pinned.fromPins(
                      Pin(startFraction: 0.0, endFraction: 0.5801),
                      Pin(size: 52.0, middle: 0.6478),
                      child:
                          // Adobe XD layer: 'Home' (text)
                          const Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: Color(0xffff7f00),
                          ),
                          children: [
                            TextSpan(
                              text: 'I wanna be\n',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: ' Service Recipient',
                              style: TextStyle(
                                color: Color(0xff2f2f2f),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Pinned.fromPins(
              Pin(size: 140.0, start: 25.0),
              Pin(size: 2.0, middle: 0.4309),
              child: SvgPicture.string(
                _svg_htsbzs,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromPins(
              Pin(start: 25, end: 20),
              Pin(size: 100, start: 45),
              child: Expanded(
                child: Image.asset('assets/drawable-xhdpi/MAIN_GETTIDY_LBL.png'),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 12.0, start: 23.0),
              Pin(size: 12.0, middle: 0.6737),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xffff7f00),
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 200.0, middle: 0.5),
              Pin(size: 55.0, end: 40.0),
              // Adobe XD layer: 'Primary Button - Sm…' (group)
              child: GestureDetector(
                onTap: () {
                  Get.to((istapped1) ? ServiceRecipientMain() : ServiceProviderMain());
                },
                onTapCancel: () {
                  // Get.snackbar('selected', 'recipient');
                  setState(() {
                    istapped1 = false;
                    istapped2 = false;
                  });
                },
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(start: 0.0, end: 0.0),
                      child:
                          // Adobe XD layer: 'Button' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: const Color(0xff053f5e),
                          border: Border.all(width: 2.0, color: const Color(0xffffffff)),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 70.0, middle: 0.5),
                      Pin(size: 20.0, middle: 0.5),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 17,
                          color: Color(0xffffffff),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 140.0, end: 35.0),
              Pin(size: 2.0, middle: 0.4309),
              child: SvgPicture.string(
                _svg_n2ez8,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromPins(
              Pin(size: 325.0, start: 25.0),
              Pin(size: 196.0, middle: 0.82),
              child: const Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 21,
                    color: Color(0xff115173),
                  ),
                  children: [
                    TextSpan(
                      text: 'WHAT DO YOU NEED?\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'As a Service Recipient: \n',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff022c43),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Do you want to dry-clean your clothes \nor find the nearest ironing service\n without wasting your time?\n',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: '\n',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffffffff),
                      ),
                    ),
                    TextSpan(
                      text: 'As a Service Provider: \n',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff022c43),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffffffff),
                      ),
                    ),
                    TextSpan(
                      text: 'Are you seeking service for your dry cleaning \nor serving people by ironing from your home?',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              // MAIN BLACK LINE
              child: Pinned.fromPins(
                Pin(start: 11.5, end: 12.5),
                Pin(size: 3.0, middle: 0.563),
                child: SvgPicture.string(
                  _svg_sy6zfm,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 140.0, start: 28.0),
              Pin(size: 2.0, middle: 0.5062),
              child: SvgPicture.string(
                _svg_hjs86p,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromPins(
              Pin(size: 140.0, end: 35.0),
              Pin(size: 2.0, middle: 0.5037),
              child: SvgPicture.string(
                _svg_v3qher,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_htsbzs =
    '<svg viewBox="25.0 374.0 140.0 2.0" ><path transform="translate(23.0, 313.99)" d="M 139.6666717529297 62.00000381469727 L 4.333333969116211 62.00000381469727 C 3.044669151306152 62.00000381469727 2 61.55228424072266 2 61 C 2 60.44771957397461 3.044669151306152 60.00000381469727 4.333333969116211 60.00000381469727 L 139.6666717529297 60.00000381469727 C 140.9553375244141 60.00000381469727 142.0000152587891 60.44771957397461 142.0000152587891 61 C 142.0000152587891 61.55228424072266 140.9553375244141 62.00000381469727 139.6666717529297 62.00000381469727 Z" fill="#333333" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n2ez8 =
    '<svg viewBox="237.0 374.0 140.0 2.0" ><path transform="translate(235.0, 313.99)" d="M 139.6666717529297 62.00000381469727 L 4.333333969116211 62.00000381469727 C 3.044669151306152 62.00000381469727 2 61.55228424072266 2 61 C 2 60.44771957397461 3.044669151306152 60.00000381469727 4.333333969116211 60.00000381469727 L 139.6666717529297 60.00000381469727 C 140.9553375244141 60.00000381469727 142.0000152587891 60.44771957397461 142.0000152587891 61 C 142.0000152587891 61.55228424072266 140.9553375244141 62.00000381469727 139.6666717529297 62.00000381469727 Z" fill="#333333" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sy6zfm =
    '<svg viewBox="11.5 482.5 388.0 13.0" ><path transform="translate(9.5, 422.47)" d="M 383.5332946777344 73.01165771484375 L 8.466667175292969 73.01165771484375 C 4.895225524902344 73.01165771484375 1.999999761581421 70.09886932373047 1.999999761581421 66.50578308105469 C 1.999999761581421 62.91275787353516 4.895225524902344 60 8.466667175292969 60 L 383.5332946777344 60 C 387.1047668457031 60 389.9999694824219 62.91275787353516 389.9999694824219 66.50578308105469 C 389.9999694824219 70.09886932373047 387.1047668457031 73.01165771484375 383.5332946777344 73.01165771484375 Z" fill="#022c43" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hjs86p =
    '<svg viewBox="28.0 439.4 140.0 2.0" ><path transform="translate(26.0, 379.36)" d="M 139.6666717529297 62.00000381469727 L 4.333333969116211 62.00000381469727 C 3.044669151306152 62.00000381469727 2 61.55228424072266 2 61 C 2 60.44771957397461 3.044669151306152 60.00000381469727 4.333333969116211 60.00000381469727 L 139.6666717529297 60.00000381469727 C 140.9553375244141 60.00000381469727 142.0000152587891 60.44771957397461 142.0000152587891 61 C 142.0000152587891 61.55228424072266 140.9553375244141 62.00000381469727 139.6666717529297 62.00000381469727 Z" fill="#333333" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v3qher =
    '<svg viewBox="237.0 437.2 140.0 2.0" ><path transform="translate(235.0, 377.21)" d="M 139.6666717529297 62.00000381469727 L 4.333333969116211 62.00000381469727 C 3.044669151306152 62.00000381469727 2 61.55228424072266 2 61 C 2 60.44771957397461 3.044669151306152 60.00000381469727 4.333333969116211 60.00000381469727 L 139.6666717529297 60.00000381469727 C 140.9553375244141 60.00000381469727 142.0000152587891 60.44771957397461 142.0000152587891 61 C 142.0000152587891 61.55228424072266 140.9553375244141 62.00000381469727 139.6666717529297 62.00000381469727 Z" fill="#333333" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
